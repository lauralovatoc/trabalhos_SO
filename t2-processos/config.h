#ifndef CONFIG_H
#define CONFIG_H

// config.h -- parametros do SO num lugar so. Mude aqui, rode "make clean; make".

// 1 = o kernel imprime "[SO] criado/morto pid N" (desligue nas medicoes)
#define DEBUG 1

// 1 = o sistema termina (e imprime o relatorio) quando o init morre
#define INIT_MORRE_ENCERRA 1

// Escalonador: 1 = round-robin (fila FIFO)
//              2 = prioridade (menor valor de prio = maior prioridade)
#define ESCALONADOR 1

// Quantum, em interrupcoes de relogio (tiques). Use no maximo 30
// (a conta da prioridade usa 1000*tiques em 16 bits).
#define QUANTUM 3

// Intervalo do relogio, em instrucoes (1 tique = RELOGIO_LIMITE instrucoes).
// Precisa ser MAIOR que o custo do escalonador em C (alguns milhares de
// instrucoes), senao o relogio dispara de novo antes de o processo escolhido
// executar uma instrucao (ver bios_mancha/README.md, "Cuidado com o periodo").
#define RELOGIO_LIMITE 10000

// Maximo de pids distintos criados numa execucao (tamanho da tabela de
// metricas, indexada pelo pid; pid 0 nao existe). SO_CRIA_PROC devolve -1
// depois disso.
#define MAX_PIDS 32

// 1 = o relatorio final para a cada 6 linhas e espera voce digitar E<enter>
// no simulador (a janela da console mostra poucas linhas). 0 = imprime tudo.
#define RELATORIO_PAGINADO 1
#define PAGINA_LINHAS      4

#endif
