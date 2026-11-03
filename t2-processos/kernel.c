// kernel.c -- mini-SO, Partes I, II e III.
//
// Parte I  : processos, tabela de processos, quadro de 16 palavras,
//            SO_CRIA_PROC / SO_MATA_PROC.
// Parte II : bloqueio (E/S sem espera ocupada, SO_ESPERA_PROC), pendencias.
// Parte III: preempcao por relogio, fila de prontos, dois escalonadores
//            (round-robin e prioridade, ver config.h), metricas e relatorio.
//
// Organizacao (o mcc nao tem "extern": o estado do SO vive nesta unidade de
// compilacao; as partes grandes entram por #include):
//   kernel.c         estado global, E/S, chamadas de sistema, tique do relogio
//   metricas.inc     contabilidade e relatorio final
//   escalonador.inc  fila, muda_estado, politicas, so_retoma
//
// Duas portas de entrada no kernel, ambas com o quadro de 16 palavras do
// contexto interrompido empilhado no endereco FIXO "quadro":
//   so_chamada()      trap 7 de um processo
//   so_trata_relogio() interrupcao 10 (via retomada_escalonador da BIOS)
// Ambas terminam em so_retoma(): escolhe quem executa e copia o quadro dele
// para "quadro"; o "rete" (da BIOS / da ponte) retoma esse processo.

#include "kernel.h"

void processo_init(void);      // definido em programas.c

// ------------------------------------------------------------ estado do SO
struct processo_t tabela_processos[MAX_PROC];
int proximo_pid = 1;          // pid e um numero de serie: nunca reutilizado
int processo_atual = -1;      // indice na tabela; -1 = nenhum processo executando
int pid_init = 0;

int quantum_restante = 0;     // tiques que faltam para acabar o quantum do atual
int fila[MAX_PROC];           // fila de prontos (cabeca = fila[0])
int fila_n = 0;

// metricas globais
struct metricas_t met[MAX_PIDS];   // indexada pelo pid
int cont_int[16];                  // interrupcoes por numero (7 = trap, 10 = relogio)
int preempcoes_total = 0;
int tempo_ocioso = 0;
int em_ocioso = 0;                 // 1 = sistema ocioso agora
int ocioso_desde = 0;
int linhas_pag = 0;                // linhas ja impressas na pagina do relatorio

int pilha_ociosa[4];               // "pilha" do contexto ocioso (nao e usada)
int relogio_limite = RELOGIO_LIMITE;   // lida por ponte.asm ao programar o relogio

// funcoes usadas pelos .inc antes de serem definidas
void encerra_sistema(char *motivo);
void so_salva_quadro(int *quadro);
void so_recupera_quadro(int *quadro);
int ha_bloqueado(void);
int ha_bloqueado_es(void);

#include "metricas.inc"
#include "escalonador.inc"

// ------------------------------------------------------------ utilitarios
void log_pid(char *msg, int pid){
#if DEBUG
    console_escreve('\n');
    console_imprime("[SO] ");
    console_imprime(msg);
    console_imprime_int(pid);
    console_escreve('\n');
#endif
}

// fim do SO: fecha as contas, imprime o relatorio e para a CPU
void encerra_sistema(char *motivo){
    console_escreve('\n');
    console_imprime("[SO] ");
    console_imprime(motivo);
    console_escreve('\n');
    met_fecha_tempos();
    relatorio_final();
    para_sistema();
}

// ------------------------------------------------------- tabela de processos
// devolve o INDICE na tabela do processo vivo (pronto, executando ou
// bloqueado) com esse pid, ou -1
int busca_indice_pid(int pid){
    int i;
    for (i = 0; i < MAX_PROC; i++) {
        if (tabela_processos[i].pid == pid) {
            if (tabela_processos[i].estado == PROC_PRONTO) return i;
            if (tabela_processos[i].estado == PROC_EXECUTANDO) return i;
            if (tabela_processos[i].estado == PROC_BLOQUEADO) return i;
        }
    }
    return -1;
}

// ocupa uma entrada LIVRE (ou MORTA: entradas mortas podem ser reutilizadas,
// o pid novo e sempre diferente) e monta o contexto inicial do processo.
// "entrada" = endereco da funcao do processo. Devolve o indice, ou -1.
int aloca_processo(int entrada){
    int i;
    int j;
    int pid;
    void (*f_encerra)(void);

    if (proximo_pid >= MAX_PIDS) return -1;   // tabela de metricas esgotada

    f_encerra = so_encerra;
    for (i = 0; i < MAX_PROC; i++) {
        if (tabela_processos[i].estado == PROC_LIVRE || tabela_processos[i].estado == PROC_MORTO) {
            pid = proximo_pid;
            proximo_pid = proximo_pid + 1;
            tabela_processos[i].pid = pid;
            tabela_processos[i].motivo = BLOQ_NENHUM;
            tabela_processos[i].arg = 0;
            tabela_processos[i].prio = 500;     // prioridade inicial 0,5

            for (j = 0; j < 16; j++) 
                tabela_processos[i].quadro[j] = 0;

            // se a funcao do processo der "return", o "ret" cai em so_encerra,
            // que faz SO_MATA_PROC de si mesmo (em vez de pular para lixo)
            tabela_processos[i].pilha[TAM_PILHA - 1] = (int) f_encerra;

            tabela_processos[i].quadro[Q_SP] = (int) &tabela_processos[i].pilha[TAM_PILHA - 1];
            tabela_processos[i].quadro[Q_IP] = entrada;
            tabela_processos[i].quadro[Q_SR] = 0;   // S=0, I=0, D=0: modo usuario, sem E/S direta
            // cs, cl, ds, dl = 0: limites desligados (memoria plana)

            met_cria(pid);
            muda_estado(i, PROC_PRONTO);            // entra no fim da fila de prontos
            return i;
        }
    }
    return -1;   // tabela cheia
}

// ------------------------------------------- salvar / recuperar o quadro
// copia o quadro de 16 palavras (no endereco fixo) para o PCB do processo atual
void so_salva_quadro(int *quadro){
    int i;
    if (processo_atual < 0) return;
    for (i = 0; i < 16; i++)
        tabela_processos[processo_atual].quadro[i] = quadro[i];
}

// copia o quadro salvo do processo atual de volta para o endereco fixo
void so_recupera_quadro(int *quadro){
    int i;
    if (processo_atual < 0) return;
    for (i = 0; i < 16; i++)
        quadro[i] = tabela_processos[processo_atual].quadro[i];
}

// --------------------------------------------------------------- bloqueio
// bloqueia o processo ATUAL. O resultado da chamada sera entregue em r0 do
// quadro dele quando for desbloqueado (so_desbloqueia).
void so_bloqueia(int motivo, int arg){
    muda_estado(processo_atual, PROC_BLOQUEADO);
    tabela_processos[processo_atual].motivo = motivo;
    tabela_processos[processo_atual].arg = arg;
}

// desbloqueia o processo de indice i; "valor" e o que a chamada de sistema
// dele devolve. O quadro dele ja foi salvo na entrada da chamada, entao
// basta atualizar r0 la. Ele entra no FIM da fila de prontos.
void so_desbloqueia(int i, int valor){
    tabela_processos[i].quadro[Q_R0] = valor;
    tabela_processos[i].motivo = BLOQ_NENHUM;
    muda_estado(i, PROC_PRONTO);
}

int ha_bloqueado(void){
    int i;
    for (i = 0; i < MAX_PROC; i++)
        if (tabela_processos[i].estado == PROC_BLOQUEADO) return 1;
    return 0;
}

int ha_bloqueado_es(void){
    int i;
    for (i = 0; i < MAX_PROC; i++) {
        if (tabela_processos[i].estado == PROC_BLOQUEADO) {
            if (tabela_processos[i].motivo == BLOQ_LE) return 1;
            if (tabela_processos[i].motivo == BLOQ_ESCREVE) return 1;
        }
    }
    return 0;
}

// Verifica os dispositivos que causaram bloqueio, realiza as operacoes
// pendentes e desbloqueia os processos. (BLOQ_ESPERA nao passa por aqui: e
// resolvido por evento, na morte do processo esperado -- ver so_mata.)
void trata_pendencias(void){
    int i;
    for (i = 0; i < MAX_PROC; i++) {
        if (tabela_processos[i].estado == PROC_BLOQUEADO) {
            if (tabela_processos[i].motivo == BLOQ_LE) {
                if (console_pronto_leitura()) 
                    so_desbloqueia(i, console_le_caractere());
            } else if (tabela_processos[i].motivo == BLOQ_ESCREVE) {
                if (console_pronto_escrita()) {
                    console_escreve(tabela_processos[i].arg);
                    so_desbloqueia(i, 0);
                }
            }
        }
    }
}

// ------------------------------------------------------- chamadas de sistema
int so_cria(int entrada){
    int idx;
    if (entrada == 0) return -1;
    idx = aloca_processo(entrada);
    if (idx < 0) return -1;
    log_pid("criado pid ", tabela_processos[idx].pid);
    return tabela_processos[idx].pid;
}

// acorda quem esperava a morte de "pid"
void acorda_esperando(int pid){
    int i;
    for (i = 0; i < MAX_PROC; i++) 
        if (tabela_processos[i].estado == PROC_BLOQUEADO) 
            if (tabela_processos[i].motivo == BLOQ_ESPERA) 
                if (tabela_processos[i].arg == pid) 
                    so_desbloqueia(i, 0);
}

// pid 0 = o proprio processo. Devolve 0, ou -1 se o pid nao existe.
int so_mata(int pid){
    int idx;
    int morto;

    if (pid == 0) idx = processo_atual;
    else idx = busca_indice_pid(pid);
    
    if (idx < 0) return -1;

    morto = tabela_processos[idx].pid;
    tabela_processos[idx].motivo = BLOQ_NENHUM;
    muda_estado(idx, PROC_MORTO);    // sai da fila (se estava), registra o termino
    log_pid("morto pid ", morto);

    acorda_esperando(morto);

#if INIT_MORRE_ENCERRA
    if (morto == pid_init) encerra_sistema("init morreu: fim");
#endif
    return 0;
}

// SO_ESPERA_PROC: devolve -1 (sem bloquear) se o pid nao existe ou e o
// proprio chamador; senao bloqueia o chamador ate a morte do esperado.
// Devolve 1 se bloqueou (o 0 final sera entregue por so_desbloqueia).
int so_espera(int pid){
    if (pid == tabela_processos[processo_atual].pid) return -1;
    if (busca_indice_pid(pid) < 0) return -1;
    so_bloqueia(BLOQ_ESPERA, pid);
    return 1;
}

// Chamada pela ponte (so_syscall_trampolim). Devolve o valor que ficara em r0
// do processo que vai executar depois desta chamada.
int so_chamada(int num, int a1, int a2, int a3, int *quadro){
    int r;
    r = -1;

    cont_int[7] = cont_int[7] + 1;
    so_salva_quadro(quadro);

    if (num == SO_LE) {
        if (console_pronto_leitura()) r = console_le_caractere();
        else so_bloqueia(BLOQ_LE, 0);
    } else if (num == SO_ESCREVE) {
        if (console_pronto_escrita()) {
            console_escreve(a1);
            r = 0;
        } else {
            so_bloqueia(BLOQ_ESCREVE, a1);
        }
    } else if (num == SO_CRIA_PROC) {
        r = so_cria(a1);
    } else if (num == SO_MATA_PROC) {
        r = so_mata(a1);
    } else if (num == SO_ESPERA_PROC) {
        r = so_espera(a1);
        if (r > 0) r = 0;   // bloqueou: o valor real chega em so_desbloqueia
    }

    // o resultado vai para o r0 do PCB de quem fez a chamada, a menos que ele
    // tenha bloqueado (o resultado vem depois) ou morrido
    if (tabela_processos[processo_atual].estado == PROC_EXECUTANDO)
        tabela_processos[processo_atual].quadro[Q_R0] = r;

    trata_pendencias();
    so_retoma(quadro);

    // A BIOS faz "st r0,(sp)" com este valor logo apos o retorno: devolvemos o
    // r0 do processo ESCOLHIDO, entao esse "st" e inofensivo mesmo se houve troca.
    return quadro[Q_R0];
}

// ------------------------------------------------------ tique do relogio
// Chamada por escalonador_trampolim (ponte.asm) a cada interrupcao 10, com o
// quadro do contexto interrompido (de um processo, ou do contexto ocioso).
void so_trata_relogio(int *quadro){
    int anterior;
    int pid_ant;

    cont_int[10] = cont_int[10] + 1;

    if (processo_atual >= 0) {
        so_salva_quadro(quadro);
        quantum_restante = quantum_restante - 1;
    }

    trata_pendencias();

    // acabou o quantum do processo em execucao?
    if (processo_atual >= 0) {
        if (tabela_processos[processo_atual].estado == PROC_EXECUTANDO && quantum_restante <= 0) {
            if (fila_n > 0) {
                // PREEMPCAO: vai para o fim da fila (muda_estado) e escolhe-se outro
                anterior = processo_atual;
                pid_ant = tabela_processos[anterior].pid;
                muda_estado(anterior, PROC_PRONTO);
                so_escalona();
                if (processo_atual != anterior) {
                    preempcoes_total = preempcoes_total + 1;
                    if (pid_ant > 0 && pid_ant < MAX_PIDS)
                        met[pid_ant].preempcoes = met[pid_ant].preempcoes + 1;
                }
            } else {
                // ninguem mais esta pronto: continua, com um quantum novo
                quantum_restante = QUANTUM;
            }
        }
    }

    so_retoma(quadro);
}

// Chamada por ponte.asm/_kernel_inicio (depois de programar o hardware):
// cria o init e copia o contexto dele para "quadro_boot" (endereco fixo onde
// o "rete" manual da ponte vai ler).
void inicializa_processos(int *quadro_boot){
    int i;
    int idx;
    void (*f_init)(void);

    for (i = 0; i < MAX_PROC; i++) {
        tabela_processos[i].estado = PROC_LIVRE;
        tabela_processos[i].motivo = BLOQ_NENHUM;
        tabela_processos[i].pid = 0;
    }
    processo_atual = -1;
    fila_n = 0;

    console_imprime("[SO] boot\n");
    f_init = processo_init;
    idx = aloca_processo((int) f_init);
    pid_init = tabela_processos[idx].pid;
    log_pid("criado pid ", pid_init);

    so_escalona();
    so_recupera_quadro(quadro_boot);
}
