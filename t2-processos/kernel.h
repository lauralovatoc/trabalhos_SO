// Definição de interface do SO
// Laura Lovato Camponogara

#ifndef KERNEL_H
#define KERNEL_H

#include "config.h"

#define MAX_PROC   16
#define TAM_PILHA  64     // palavras (2 bytes) da pilha de trabalho de cada processo

// Estados do processo
#define PROC_LIVRE      0
#define PROC_PRONTO     1
#define PROC_EXECUTANDO 2
#define PROC_MORTO      3
#define PROC_BLOQUEADO  4

// Motivo do bloqueio (campo "motivo" do PCB, so vale se estado == BLOQUEADO)
#define BLOQ_NENHUM     0
#define BLOQ_LE         1   // esperando um caractere na console
#define BLOQ_ESCREVE    2   // esperando a console aceitar um caractere (arg = caractere)
#define BLOQ_ESPERA     3   // esperando a morte de outro processo (arg = pid esperado)

// Numeros das chamadas de sistema (indice em tabela_syscalls da BIOS)
#define SO_LE           0
#define SO_ESCREVE      1
#define SO_CRIA_PROC    2
#define SO_MATA_PROC    3
#define SO_ESPERA_PROC  4
#define N_SYSCALLS      5

// Indices dos registradores dentro do quadro de 16 palavras
// (ordem do bios_mancha/README.md: r0..r4, bp, sp, ip, sr, s1..s3, cs, cl, ds, dl)
#define Q_R0   0
#define Q_SP   6
#define Q_IP   7
#define Q_SR   8

// Indices dos 3 estados contabilizados nas metricas
#define IE_PRONTO  0
#define IE_BLOQ    1
#define IE_EXEC    2

// PCB (Process Control Block)
struct processo_t {
    int pid;                 // numero de serie unico (nunca reutilizado)
    int estado;              // LIVRE, PRONTO, EXECUTANDO, MORTO, BLOQUEADO
    int motivo;              // BLOQ_*: por que esta bloqueado
    int arg;                 // argumento do bloqueio (caractere a escrever ou pid esperado)
    int prio;                // prioridade em milesimos (500 = 0,5); menor = mais prioritario
    int quadro[16];          // copia dos 16 registradores do contexto
    int pilha[TAM_PILHA];    // pilha de trabalho dedicada ao processo
};

// Metricas de um processo. Ficam numa tabela INDEXADA PELO PID (que nunca se
// repete), separada do PCB: a entrada do PCB e reaproveitada quando o
// processo morre, as metricas dele nao podem se perder. Tempos em tiques.
struct metricas_t {
    int criacao;             // tique da criacao
    int termino;             // tique do termino (-1 = ainda vivo)
    int desde;               // tique da ultima mudanca de estado
    int preempcoes;          // vezes que perdeu a CPU por fim de quantum
    int n_est[3];            // vezes que entrou em PRONTO / BLOQUEADO / EXECUTANDO
    int t_est[3];            // tempo total em PRONTO / BLOQUEADO / EXECUTANDO
    int resp_soma;           // soma dos tempos de resposta (desbloqueio -> escalonado)
    int resp_n;              // quantas respostas foram medidas
    int desbloq_em;          // tique do ultimo desbloqueio
    int aguarda_resp;        // 1 = desbloqueou e ainda nao foi escalonado
};

// ---------------------------------------------------------------
// Rotinas em assembly (ponte.asm). Rotulo gerado pelo mcc: "_f_<nome>".
// ---------------------------------------------------------------

// Uso EXCLUSIVO do kernel (modo supervisor, usam in/out/halt):
void console_escreve(int c);
void console_imprime(char *s);
void console_imprime_int(int v);
int  console_pronto_leitura(void);   // != 0 se ha caractere no buffer da BIOS
int  console_pronto_escrita(void);   // != 0 se a console aceita um caractere
int  console_le_caractere(void);     // le do buffer da BIOS
int  console_raw_pronto(void);       // le a PORTA direto (so com interrupcoes mascaradas)
int  console_raw_le(void);
void para_sistema(void);
int  so_tiques(void);                // tiques do relogio desde o boot (contador da BIOS)
int  so_cont_console(void);          // interrupcoes de console (8) recebidas
void ociosa(void);                   // laco em modo usuario: contexto "sem processo"

// Uso dos PROCESSOS (modo usuario): cada uma faz "trap 7" com o numero
// da chamada em r0 e os argumentos em r1..r4.
int  so_le(void);
int  so_escreve(int c);
int  so_cria_proc(void (*entrada)(void));
int  so_mata_proc(int pid);        // pid 0 = o proprio processo
int  so_espera_proc(int pid);      // 0 ao acordar; -1 se pid inexistente ou o proprio
void so_encerra(void);             // so_mata_proc(0): usada como endereco de retorno

#endif
