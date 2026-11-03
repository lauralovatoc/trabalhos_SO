// programas.c -- programas de USUARIO (rodam com S=0, I=0: so podem usar so_*).
//
// Escolha o cenario em CENARIO:
//   1 = espera: init cria A e B e espera os dois (SO_ESPERA_PROC), testa erros
//   2 = eco: um leitor ecoa o que voce digita (comando E<texto>. do simulador),
//       enquanto B roda e termina -- mostra o bloqueio de SO_LE
//   3 = deadlock: X e Y esperam um pelo outro
//   4 = tres processos presos a CPU (A, B, C): mostra a PREEMPCAO por quantum
//   5 = um processo preso a CPU (H) e dois "interativos" (x, y) que bloqueiam
//       toda hora: compara round-robin x prioridade (tempo de resposta)
//
// IMPORTANTE: este arquivo NAO usa strings literais nem variaveis globais: o
// mcc nomeia literais "_str..._N" e o numero pode se repetir entre arquivos
// montados juntos (simbolo duplicado). So caracteres e variaveis locais.

// Os pids sao numeros de serie: o init e sempre 1, e os seguintes 2, 3, 4...

#include "kernel.h"

#define CENARIO 4

// cenarios 4 e 5: quanto cada processo "calcula" entre duas escritas
#define CPU_ITER   3000    // iteracoes do laco (~11 instrucoes cada: ~3 tiques)
#define CPU_VOLTAS 6       // quantas vezes calcula e escreve

void processoA(void);
void processoB(void);
void processoC(void);
void leitor(void);
void processoX(void);
void processoY(void);
void cpuA(void);
void cpuB(void);
void cpuC(void);
void interativo1(void);
void interativo2(void);
void filho(void);

void atraso(void){
    int i;
    i = 0;
    while (i < 200)
        i = i + 1;
}

// ---------------------------------------------------------------- init
void processo_init(void){
    int pa;
    int pb;
    int pc;
    int r;

    so_escreve('I');
    so_escreve(':');

#if CENARIO == 1
    pa = so_cria_proc(processoA);
    pb = so_cria_proc(processoB);
    so_escreve('0' + pa);
    so_escreve('0' + pb);
    so_escreve('\n');

    r = so_espera_proc(1);       // esperar a si mesmo: -1
    if (r < 0) {
        so_escreve('s');
    }
    r = so_espera_proc(99);      // pid inexistente: -1
    if (r < 0) {
        so_escreve('n');
    }
    so_escreve('\n');

    so_espera_proc(pa);          // bloqueia ate A morrer
    so_escreve('a');
    so_espera_proc(4);           // C (criado por A) tem pid 4: bloqueia ate C morrer
    so_escreve('c');
    so_espera_proc(pb);          // B ja morreu: volta -1 sem bloquear
    so_escreve('b');
    so_escreve('\n');
#elif CENARIO == 2
    pa = so_cria_proc(leitor);
    pb = so_cria_proc(processoB);
    so_escreve('\n');
    so_espera_proc(pa);
    so_espera_proc(pb);
    so_escreve('\n');
#elif CENARIO == 3
    pa = so_cria_proc(processoX);   // pid 2
    pb = so_cria_proc(processoY);   // pid 3
    so_espera_proc(pa);             // o init tambem fica bloqueado
#elif CENARIO == 4
    pa = so_cria_proc(cpuA);        // pid 2
    pb = so_cria_proc(cpuB);        // pid 3
    pc = so_cria_proc(cpuC);        // pid 4
    so_espera_proc(pa);
    so_espera_proc(pb);
    so_espera_proc(pc);
    so_escreve('\n');
#else
    pa = so_cria_proc(cpuA);          // pid 2: o "pesado"
    pb = so_cria_proc(interativo1);   // pid 3
    pc = so_cria_proc(interativo2);   // pid 4
    so_espera_proc(pa);
    so_espera_proc(pb);
    so_espera_proc(pc);
    so_escreve('\n');
#endif
}

// ------------------------------------------------------ cenario 1 e 2
// A: escreve 5 'A', cria C e termina
void processoA(void){
    int i;
    int pc;
    for (i = 0; i < 5; i++) {
        so_escreve('A');
        atraso();
    }
    pc = so_cria_proc(processoC);
    so_escreve('c');
    so_escreve('0' + pc);
}

// B: escreve 5 'B' e termina
void processoB(void){
    int i;
    for (i = 0; i < 5; i++) {
        so_escreve('B');
        atraso();
    }
}

// C: escreve 3 'C' e termina
void processoC(void){
    int i;
    for (i = 0; i < 3; i++) {
        so_escreve('C');
        atraso();
    }
}

// le caracteres (bloqueando ate haver um) e ecoa; termina no '.'
void leitor(void){
    int c;
    c = 0;
    while (c != '.') {
        c = so_le();
        so_escreve(c);
    }
}

// ------------------------------------------------------------ cenario 3
void processoX(void){so_espera_proc(3);}

void processoY(void){so_espera_proc(2);}

// ------------------------------------------------------ cenarios 4 e 5
// processo preso a CPU: calcula CPU_ITER iteracoes (varios tiques: sofre
// preempcao no meio) e escreve a sua letra; repete CPU_VOLTAS vezes
void trabalha(int letra){
    int k;
    int i;
    for (k = 0; k < CPU_VOLTAS; k++) {
        i = 0;
        while (i < CPU_ITER)
            i = i + 1;
        
        so_escreve(letra);
    }
}

void cpuA(void){trabalha('A');}
void cpuB(void){trabalha('B');}
void cpuC(void){trabalha('C');}

// processo "interativo": calcula um pouquinho, escreve e BLOQUEIA esperando
// um filho que morre na hora -- gasta so uma fracao pequena do quantum
void filho(void){}

void interativa(int letra){
    int k;
    int i;
    int p;
    for (k = 0; k < 6; k++) {
        i = 0;
        while (i < 200)
            i = i + 1;
        
        so_escreve(letra);
        p = so_cria_proc(filho);
        if (p > 0) so_espera_proc(p);
    }
}

void interativo1(void){interativa('x');}

void interativo2(void){interativa('y');}
