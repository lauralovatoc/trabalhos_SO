// metricas.inc -- contabilidade e relatorio final.
//
// NAO e compilado sozinho: e incluido por kernel.c (#include "metricas.inc"),
// depois das variaveis globais. Motivo: o mcc nao tem "extern", entao o
// estado do SO (tabela_processos, met, ...) precisa viver na mesma unidade de
// compilacao que estas funcoes.
//
// Todos os tempos estao em TIQUES do relogio (1 tique = RELOGIO_LIMITE
// instrucoes, ver config.h).

// estado -> indice das tabelas n_est[]/t_est[] (-1 = estado nao contabilizado)
int idx_estado(int estado){
    if (estado == PROC_PRONTO) return IE_PRONTO;
    if (estado == PROC_BLOQUEADO) return IE_BLOQ;
    if (estado == PROC_EXECUTANDO) return IE_EXEC;
    return -1;
}

// zera as metricas do pid recem-criado
void met_cria(int pid){
    int k;
    for (k = 0; k < 3; k++) {
        met[pid].n_est[k] = 0;
        met[pid].t_est[k] = 0;
    }
    met[pid].criacao = so_tiques();
    met[pid].termino = -1;
    met[pid].desde = met[pid].criacao;
    met[pid].preempcoes = 0;
    met[pid].resp_soma = 0;
    met[pid].resp_n = 0;
    met[pid].desbloq_em = 0;
    met[pid].aguarda_resp = 0;
}

// antes do relatorio: soma o tempo do estado ATUAL dos processos ainda vivos
// e fecha o periodo ocioso, para os totais irem ate o instante final
void met_fecha_tempos(void){
    int i;
    int k;
    int pid;
    int agora;

    agora = so_tiques();
    for (i = 0; i < MAX_PROC; i++) {
        k = idx_estado(tabela_processos[i].estado);
        pid = tabela_processos[i].pid;
        if (k >= 0 && pid > 0 && pid < MAX_PIDS) {
            met[pid].t_est[k] = met[pid].t_est[k] + (agora - met[pid].desde);
            met[pid].desde = agora;
        }
    }
    if (em_ocioso) {
        tempo_ocioso = tempo_ocioso + (agora - ocioso_desde);
        em_ocioso = 0;
    }
}

// ------------------------------------------------------------ relatorio
// A janela da console do simulador mostra so umas 8 linhas: com
// RELATORIO_PAGINADO o relatorio para a cada PAGINA_LINHAS linhas e espera
// uma tecla (comando E<enter> do simulador). Aqui as interrupcoes estao
// mascaradas (D=1), entao le-se a PORTA direto, nao o buffer da BIOS.

void rel_pausa(void){
    int espera;
    espera = 0;
    console_imprime("-- E<enter> continua --");

    while (console_raw_pronto() == 0)
        espera = espera + 1;
    
    while (console_raw_pronto() != 0) 
        espera = console_raw_le();

    console_escreve('\n');
}

void rel_nl(void){
    console_escreve('\n');
    linhas_pag = linhas_pag + 1;
#if RELATORIO_PAGINADO
    if (linhas_pag >= PAGINA_LINHAS) {
        linhas_pag = 0;
        rel_pausa();
    }
#endif
}

void rel_num(char *rotulo, int v){
    console_imprime(rotulo);
    console_imprime_int(v);
}

void relatorio_final(void){
    int pid;
    int media;

    // Formato COMPACTO (cabe numa janela pequena): 1 linha por processo.
    // ent = entradas P/B/E, tempo = tempo P/B/E (P pronto, B bloqueado,
    // E executando). Tempos em tiques: 1 tique = RELOGIO_LIMITE instrucoes.
    linhas_pag = 0;
#if ESCALONADOR == 2
    console_imprime("PRIORIDADE");
#else
    console_imprime("ROUND-ROBIN");
#endif
    rel_num(" q=", QUANTUM);
    rel_num(" criados=", proximo_pid - 1);
    rel_num(" preempc=", preempcoes_total);
    rel_nl();

    rel_num("total=", so_tiques());
    rel_num(" ocioso=", tempo_ocioso);
    rel_num(" | int rel=", cont_int[10]);
    rel_num(" sys=", cont_int[7]);
    rel_num(" con=", so_cont_console());
    rel_nl();

    console_imprime("pid ret pre resp(n) ent P/B/E tempo P/B/E");
    rel_nl();

    for (pid = 1; pid < proximo_pid; pid++) {
        if (pid < MAX_PIDS) {
            rel_num("p", pid);
            if (met[pid].termino >= 0) {
                rel_num(" ", met[pid].termino - met[pid].criacao);
            } else {
                console_imprime(" vivo");
            }
            rel_num(" ", met[pid].preempcoes);
            media = 0;
            if (met[pid].resp_n > 0) {
                media = met[pid].resp_soma / met[pid].resp_n;
            }
            rel_num(" ", media);
            rel_num("(", met[pid].resp_n);
            console_escreve(')');

            console_escreve(' ');
            console_imprime_int(met[pid].n_est[IE_PRONTO]);
            console_escreve('/');
            console_imprime_int(met[pid].n_est[IE_BLOQ]);
            console_escreve('/');
            console_imprime_int(met[pid].n_est[IE_EXEC]);
            console_escreve(' ');
            console_imprime_int(met[pid].t_est[IE_PRONTO]);
            console_escreve('/');
            console_imprime_int(met[pid].t_est[IE_BLOQ]);
            console_escreve('/');
            console_imprime_int(met[pid].t_est[IE_EXEC]);
            rel_nl();
        }
    }
    console_imprime("=== FIM ===");
    console_escreve('\n');
}
