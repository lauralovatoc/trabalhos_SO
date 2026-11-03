# Relatório de execuções – T2 (Parte III)

## 1. Como gerar cada execução

1. Em `config.h`: `DEBUG 0`, `ESCALONADOR`, `QUANTUM`.
2. Em `programas.c`: `CENARIO` 4 ou 5.
3. `make clean && make && make run`; no simulador `D0` e `C`.
4. Ao final o SO imprime o relatório compacto (1 linha por processo, 4 linhas por página); avance digitando `E` e Enter.

Mantenha `RELOGIO_LIMITE 10000` em todas as execuções, para os tempos serem comparáveis (1 tique = 10000 instruções).

## 2. Configurações

| # | cenário | escalonador | quantum |
|---|---|---|---|
| C1 | 4 | round-robin | 1 |
| C2 | 4 | round-robin | 3 |
| C3 | 4 | round-robin | 8 |
| C4 | 4 | prioridade | 3 |
| C5 | 5 | round-robin | 3 |
| C6 | 5 | prioridade | 3 |
| C7 | 5 | round-robin | 8 |
| C8 | 5 | prioridade | 8 |

## 3. Resultados

Todas as execuções foram feitas no simulador, com `DEBUG 0` e `RELOGIO_LIMITE 10000` (1 tique = 10000 instruções; tempos em tiques). Cada configuração foi executada uma vez. Em todas, a soma `P+B+E` de cada processo é igual ao seu tempo de retorno, e a soma das preempções por processo é igual ao total do cabeçalho.

### 3.1 Resumo por execução

| # | cenário | escalonador | quantum | tempo total | ocioso | preempções | int. relógio | int. syscall | int. console |
|---|---|---|---|---|---|---|---|---|---|
| C1 | 4 | round-robin | 1 | 155 | 0 | 153 | 155 | 31 | 0 |
| C2 | 4 | round-robin | 3 | 138 | 0 | 43 | 138 | 31 | 0 |
| C3 | 4 | round-robin | 8 | 134 | 0 | 15 | 134 | 31 | 0 |
| C4 | 4 | prioridade | 3 | 139 | 0 | 44 | 139 | 31 | 0 |
| C5 | 5 | round-robin | 3 | 76 | 0 | 13 | 76 | 67 | 0 |
| C6 | 5 | prioridade | 3 | 74 | 0 | 1 | 74 | 67 | 0 |
| C7 | 5 | round-robin | 8 | 74 | 0 | 5 | 74 | 67 | 0 |
| C8 | 5 | prioridade | 8 | 74 | 0 | 1 | 74 | 67 | 0 |

### 3.2 Por processo

Em P/B/E: P = pronto, B = bloqueado, E = executando. `resp.` = resposta média (n ocorrências). No cenário 4 os pids 2, 3 e 4 são os processos de CPU (A, B, C); no cenário 5, o pid 2 é o pesado e os pids 3 e 4 são os interativos. No cenário 5 os pids 5 a 16 são os filhos criados pelos interativos.

**C1 – cenário 4, round-robin, quantum 1**

| pid | retorno | preempções | resp. média (n) | entradas P/B/E | tempo P/B/E |
|---|---|---|---|---|---|
| 1 (init) | 155 | 2 | 1 (2) | 5/2/5 | 6/146/3 |
| 2 | 150 | 50 | 0 (0) | 51/0/51 | 100/0/50 |
| 3 | 152 | 51 | 0 (0) | 52/0/52 | 100/0/52 |
| 4 | 151 | 50 | 0 (0) | 51/0/51 | 101/0/50 |

**C2 – cenário 4, round-robin, quantum 3**

| pid | retorno | preempções | resp. média (n) | entradas P/B/E | tempo P/B/E |
|---|---|---|---|---|---|
| 1 (init) | 138 | 0 | 2 (2) | 3/2/3 | 5/129/4 |
| 2 | 130 | 14 | 0 (0) | 15/0/15 | 86/0/44 |
| 3 | 136 | 15 | 0 (0) | 16/0/16 | 90/0/46 |
| 4 | 134 | 14 | 0 (0) | 15/0/15 | 90/0/44 |

**C3 – cenário 4, round-robin, quantum 8**

| pid | retorno | preempções | resp. média (n) | entradas P/B/E | tempo P/B/E |
|---|---|---|---|---|---|
| 1 (init) | 134 | 0 | 7 (1) | 2/1/2 | 7/123/4 |
| 2 | 125 | 5 | 0 (0) | 6/0/6 | 82/0/43 |
| 3 | 128 | 5 | 0 (0) | 6/0/6 | 84/0/44 |
| 4 | 131 | 5 | 0 (0) | 6/0/6 | 88/0/43 |

**C4 – cenário 4, prioridade, quantum 3**

| pid | retorno | preempções | resp. média (n) | entradas P/B/E | tempo P/B/E |
|---|---|---|---|---|---|
| 1 (init) | 139 | 0 | 0 (2) | 3/2/3 | 0/136/3 |
| 2 | 137 | 15 | 0 (0) | 16/0/16 | 91/0/46 |
| 3 | 137 | 15 | 0 (0) | 16/0/16 | 91/0/46 |
| 4 | 135 | 14 | 0 (0) | 15/0/15 | 91/0/44 |

**C5 – cenário 5, round-robin, quantum 3**

| pid | retorno | preempções | resp. média (n) | entradas P/B/E | tempo P/B/E |
|---|---|---|---|---|---|
| 1 (init) | 76 | 0 | 0 (1) | 2/1/2 | 0/72/4 |
| 2 | 74 | 13 | 0 (0) | 14/0/14 | 20/0/54 |
| 3 | 58 | 0 | 3 (6) | 7/6/7 | 22/30/6 |
| 4 | 58 | 0 | 3 (6) | 7/6/7 | 28/18/12 |
| 5 a 16 (filhos) | 4 a 6 | 0 | 0 (0) | 1/0/1 cada | tempos de 0 a 6 |

**C6 – cenário 5, prioridade, quantum 3**

| pid | retorno | preempções | resp. média (n) | entradas P/B/E | tempo P/B/E |
|---|---|---|---|---|---|
| 1 (init) | 74 | 0 | 0 (1) | 2/1/2 | 0/70/4 |
| 2 | 72 | 1 | 0 (0) | 2/0/2 | 29/0/43 |
| 3 | 28 | 0 | 1 (6) | 7/6/7 | 14/3/11 |
| 4 | 31 | 0 | 1 (6) | 7/6/7 | 14/4/13 |
| 5 a 16 (filhos) | 0 a 3 | 0 | 0 (0) | 1/0/1 cada | tempos de 0 a 3 |

**C7 – cenário 5, round-robin, quantum 8**

| pid | retorno | preempções | resp. média (n) | entradas P/B/E | tempo P/B/E |
|---|---|---|---|---|---|
| 1 (init) | 74 | 0 | 0 (2) | 3/2/3 | 1/70/3 |
| 2 | 58 | 5 | 0 (0) | 6/0/6 | 11/0/47 |
| 3 | 72 | 0 | 3 (6) | 7/6/7 | 28/35/9 |
| 4 | 72 | 0 | 4 (6) | 7/6/7 | 34/27/11 |
| 5 a 16 (filhos) | 1 a 11 | 0 | 0 (0) | 1/0/1 cada | tempos de 0 a 11 |

**C8 – cenário 5, prioridade, quantum 8**

| pid | retorno | preempções | resp. média (n) | entradas P/B/E | tempo P/B/E |
|---|---|---|---|---|---|
| 1 (init) | 74 | 0 | 0 (1) | 2/1/2 | 0/71/3 |
| 2 | 73 | 1 | 0 (0) | 2/0/2 | 29/0/44 |
| 3 | 35 | 0 | 0 (6) | 7/6/7 | 9/17/9 |
| 4 | 36 | 0 | 0 (6) | 7/6/7 | 10/14/12 |
| 5 a 16 (filhos) | 2 a 4 | 0 | 0 (0) | 1/0/1 cada | tempos de 0 a 4 |

## 4. Análise

**Quantum no round-robin (C1 × C2 × C3, cenário 4).** Com três processos presos à CPU, diminuir o quantum só aumenta a sobrecarga de troca: as preempções vão de 15 (q=8) para 43 (q=3) e 153 (q=1), e o tempo total sobe de 134 para 138 e 155 tiques. O retorno médio dos três processos de CPU acompanha: 128, 133,3 e 151. Nenhum processo ganha com isso, porque todos têm o mesmo comportamento. O init (que só espera) tem tempo de resposta crescente com o quantum (1, 2 e 7 tiques em C1, C2 e C3), pois, ao ser desbloqueado, espera o processo que está na CPU terminar o quantum dele.

**Round-robin × prioridade com processos só de CPU (C2 × C4).** Quase iguais, como esperado: tempo total 138 contra 139, preempções 43 contra 44, retorno médio 133,3 contra 136,3 (diferença de 3 tiques, com cada configuração executada uma vez). Como todos usam o quantum inteiro, as prioridades convergem e o escalonador se comporta como um round-robin. A única diferença visível está no init: resposta média 2 no round-robin e 0 na prioridade (C4), onde o init passou 0 tiques em PRONTO, porque, por quase nunca usar a CPU, sua prioridade é a melhor.

**Processos interativos (C5 × C6 e C7 × C8, cenário 5).** Aqui a prioridade faz diferença nos dois quantums:

| | retorno dos interativos (pids 3 e 4) | resposta média deles | retorno do pesado (pid 2) | preempções |
|---|---|---|---|---|
| C5 round-robin, q=3 | 58 e 58 | 3 e 3 | 74 | 13 |
| C6 prioridade, q=3 | 28 e 31 | 1 e 1 | 72 | 1 |
| C7 round-robin, q=8 | 72 e 72 | 3 e 4 | 58 | 5 |
| C8 prioridade, q=8 | 35 e 36 | 0 e 0 | 73 | 1 |

Os interativos usam uma fração pequena do quantum antes de bloquear, então a prioridade deles melhora e eles passam à frente do pesado quando são desbloqueados. O retorno deles cai de 58 para 28 e 31 com q=3, e de 72 para 35 e 36 com q=8. No round-robin, o quantum maior prejudica os interativos (58 → 72) e favorece o pesado (74 → 58), porque o pesado segura a CPU por 8 tiques seguidos. Com prioridade, o quantum quase não importa para o pesado (72 e 73), mas os interativos ficaram um pouco piores com q=8 (28 e 31 → 35 e 36), diferença menor que a do round-robin cuja causa não investiguei.

O custo da prioridade aparece no pesado em q=8: seu retorno sobe de 58 (C7) para 73 (C8), pois ele só termina depois dos interativos. Com q=3 não houve esse custo (74 → 72). O tempo total ficou igual ou menor com prioridade (74 a 76 tiques em todas).

**Tempo ocioso e console.** O tempo ocioso foi 0 e as interrupções de console foram 0 em todas as execuções. Isso era esperado, já que os cenários 4 e 5 não usam `SO_LE`. A parte ociosa e a console por interrupção não foram exercitadas por estes testes.

**Limitações da medida.**
- Os tempos estão em tiques inteiros (1 tique = 10000 instruções) e cada configuração foi executada uma vez, então diferenças de 1 ou 2 tiques podem ser só arredondamento.
- Os filhos dos interativos (pids 5 a 16) duram de 0 a 11 tiques, então os valores deles não têm significado individual.
- O mesmo trabalho do processo pesado aparece com tempos diferentes em E (43 a 54 tiques nas configurações do cenário 5). Parte disso é a contagem em tiques inteiros, e o restante é provavelmente o custo das trocas atribuído ao processo em execução. Não medi essa parte separadamente.

## 5. Conclusão

Com processos iguais, o round-robin e a prioridade são equivalentes, e um quantum pequeno só gasta mais tempo em trocas de contexto (155 tiques com q=1 contra 134 com q=8). Com processos de perfis diferentes, a prioridade dinâmica favorece quem usa pouco a CPU: os interativos terminam em cerca da metade do tempo (28 a 36 tiques contra 58 a 72), com custo pequeno ou nulo no total e um custo no processo pesado que depende do quantum (nenhum com q=3, de 58 para 73 tiques com q=8). O round-robin é mais previsível para todos, mas deixa os processos curtos esperarem por quem ocupa a CPU, e esse efeito cresce com o quantum.
