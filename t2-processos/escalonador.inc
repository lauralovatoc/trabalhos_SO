// escalonador.inc -- fila de prontos, mudanca de estado, escolha do proximo
// processo (round-robin ou prioridade) e o "retorno" comum a toda entrada no
// kernel (chamada de sistema ou tique do relogio).
//
// NAO e compilado sozinho: e incluido por kernel.c (ver metricas.inc).
//
// INVARIANTE: a fila contem exatamente os processos em estado PRONTO, na
// ordem em que ficaram prontos (cabeca = fila[0]). Por isso TODA mudanca de
// estado passa por muda_estado().

// ---------------------------------------------------------------- fila
void fila_entra(int i){
    fila[fila_n] = i;
    fila_n = fila_n + 1;
}

// tira o indice i da fila, mantendo a ordem dos demais
void fila_remove(int i){
    int k;
    int achou;

    achou = -1;
    for (k = 0; k < fila_n; k++) 
        if (fila[k] == i && achou < 0) 
            achou = k;

    if (achou < 0) return;

    for (k = achou; k < fila_n - 1; k++)
        fila[k] = fila[k + 1];

    fila_n = fila_n - 1;
}

// --------------------------------------------- mudanca de estado (unica)
// Atualiza: fila de prontos, metricas (tempo no estado que termina, entradas
// no novo estado, tempo de resposta, termino) e a prioridade quando o
// processo perde a CPU.
void muda_estado(int i, int novo){
    int velho;
    int pid;
    int agora;
    int k;
    int usado;
    int ok;

    velho = tabela_processos[i].estado;
    if (velho == novo) return;

    pid = tabela_processos[i].pid;
    agora = so_tiques();
    ok = 0;
    if (pid > 0 && pid < MAX_PIDS) ok = 1;

    if (ok) {
        k = idx_estado(velho);
        if (k >= 0)
            met[pid].t_est[k] = met[pid].t_est[k] + (agora - met[pid].desde);
        
        k = idx_estado(novo);
        if (k >= 0)
            met[pid].n_est[k] = met[pid].n_est[k] + 1;

        met[pid].desde = agora;

        // tempo de resposta: do desbloqueio ate ser escalonado
        if (velho == PROC_BLOQUEADO && novo == PROC_PRONTO) {
            met[pid].aguarda_resp = 1;
            met[pid].desbloq_em = agora;
        }
        if (velho == PROC_PRONTO && novo == PROC_EXECUTANDO) {
            if (met[pid].aguarda_resp) {
                met[pid].resp_soma = met[pid].resp_soma + (agora - met[pid].desbloq_em);
                met[pid].resp_n = met[pid].resp_n + 1;
                met[pid].aguarda_resp = 0;
            }
        }
        if (novo == PROC_MORTO)
            met[pid].termino = agora;
    }

    if (velho == PROC_PRONTO)
        fila_remove(i);

    // perdeu o processador (bloqueou ou acabou o quantum):
    // prio = (prio + t_exec/t_quantum) / 2, em milesimos
    if (velho == PROC_EXECUTANDO) {
        if (novo == PROC_PRONTO || novo == PROC_BLOQUEADO) {
            usado = QUANTUM - quantum_restante;
            if (usado < 0) usado = 0;
            if (usado > QUANTUM) usado = QUANTUM;
            tabela_processos[i].prio = (tabela_processos[i].prio + (1000 * usado) / QUANTUM) / 2;
        }
    }

    tabela_processos[i].estado = novo;

    if (novo == PROC_PRONTO)
        fila_entra(i);
}

// ------------------------------------------------------------ politicas
// devolve o INDICE do proximo processo a executar (sem tira-lo da fila), ou -1
int escolhe_proximo(void){
    int k;
    int melhor;
    int cand;

    if (fila_n == 0) return -1;
    melhor = fila[0];
#if ESCALONADOR == 2
    // prioridade: menor valor de prio; empate = quem esta antes na fila
    for (k = 1; k < fila_n; k++) {
        cand = fila[k];
        if (tabela_processos[cand].prio < tabela_processos[melhor].prio) {
            melhor = cand;
        }
    }
#endif
    return melhor;
}

// Se o processo atual ainda pode executar (EXECUTANDO), continua. Senao
// escolhe o proximo da fila; sem ninguem, processo_atual = -1 (nenhum).
// Quem e escolhido ganha um quantum novo.
void so_escalona(void){
    int i;
    int agora;

    if (processo_atual >= 0)
        if (tabela_processos[processo_atual].estado == PROC_EXECUTANDO) return;
    
    i = escolhe_proximo();
    if (i < 0) {
        processo_atual = -1;
        return;
    }
    agora = so_tiques();
    if (em_ocioso) {
        tempo_ocioso = tempo_ocioso + (agora - ocioso_desde);
        em_ocioso = 0;
    }
    processo_atual = i;
    muda_estado(i, PROC_EXECUTANDO);
    quantum_restante = QUANTUM;
}

// contexto de "nenhum processo": um laco em modo usuario com as interrupcoes
// ligadas. O proximo tique do relogio devolve o controle ao kernel, que
// trata as pendencias de E/S e tenta de novo.
void carrega_ocioso(int *quadro){
    int i;
    void (*f)(void);

    for (i = 0; i < 16; i++)
        quadro[i] = 0;

    f = ociosa;
    quadro[Q_SP] = (int) &pilha_ociosa[3];
    quadro[Q_IP] = (int) f;
    quadro[Q_SR] = 0;
}

// Fim de TODA entrada no kernel (chamada de sistema ou tique): escolhe quem
// executa e deixa o quadro em "quadro" pronto para o "rete".
void so_retoma(int *quadro){
    so_escalona();
    if (processo_atual < 0) {
        if (ha_bloqueado_es()) {
            if (em_ocioso == 0) {
                em_ocioso = 1;
                ocioso_desde = so_tiques();
            }
            carrega_ocioso(quadro);
            return;
        }

        if (ha_bloqueado())
            encerra_sistema("deadlock: todos esperando uns aos outros");
        else
            encerra_sistema("nenhum processo restante: fim");
        return;
    }
    so_recupera_quadro(quadro);
}
