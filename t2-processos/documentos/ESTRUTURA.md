# T2 – Partes I, II e III: como compilar e rodar

## 1. Estrutura
```
mancha/
  simulador_completo/   (bin/montador, bin/simulador)
  compilador_c/         (bin/mcc)
  bios_mancha/src/bios.asm
  t2-processos/         <- esta pasta
```

Arquivos de `t2-processos`:

| arquivo | papel |
|---|---|
| `config.h` | **todos os parâmetros**: `ESCALONADOR` (1 = round-robin, 2 = prioridade), `QUANTUM`, `RELOGIO_LIMITE`, `DEBUG`, `INIT_MORRE_ENCERRA`, paginação do relatório |
| `kernel.h` | constantes, `struct processo_t` (PCB), `struct metricas_t`, protótipos das rotinas assembly |
| `kernel.c` | estado global do SO, E/S e pendências, chamadas de sistema, tique do relógio (`so_trata_relogio`) |
| `escalonador.inc` | fila de prontos, `muda_estado`, políticas (RR e prioridade), `so_escalona`, `so_retoma` |
| `metricas.inc` | contabilidade e `relatorio_final` |
| `programas.c` | programas de usuário e a escolha do cenário (`CENARIO`) |
| `ponte.asm` | `_kernel_inicio`, relógio, trampolins BIOS→C, stubs `so_*` e `console_*` |
| `Makefile` | compila e monta |
| `RELATORIO.md` | roteiro e modelo do relatório de execuções |

Os `.inc` são incluídos por `kernel.c` (`#include`).

## 2. Pré-requisitos (uma vez)

```sh
cd mancha/simulador_completo && make     # bin/montador e bin/simulador (gcc + ncurses)
cd ../compilador_c && make               # bin/mcc
```

## 3. Compilar e rodar

```sh
cd mancha/t2-processos
make clean     # sempre que mudar config.h ou programas.c (o make nao enxerga tudo)
make
make run       # terminal com pelo menos 90x36
```

No simulador: `D0` (velocidade máxima) e `C` (continua). `P` pára, `1` um passo, `R` reinicia, `F` fecha,
`E<texto>` digita na console.

## 4. Escolhendo cenário e escalonador

- **Cenário:** `#define CENARIO` em `programas.c`.
- **Escalonador, quantum, relógio:** `config.h`.

| CENARIO | o que mostra |
|---|---|
| 1 | `SO_ESPERA_PROC` (Parte II) |
| 2 | `SO_LE` bloqueante: digite `Eola mundo.`; com todos bloqueados o SO fica **ocioso** (laço em modo usuário) até o próximo tique |
| 3 | deadlock |
| 4 | três processos presos à CPU (A, B, C): a **preempção** aparece como a alternância das letras |
| 5 | um processo pesado (`A`) e dois interativos (`x`, `y`) que bloqueiam toda hora: compare RR × prioridade |


## 5. Como funciona

**Duas portas de entrada no kernel**, ambas com o quadro de 16 palavras no endereço fixo da BIOS:

1. **Chamada de sistema** (`trap 7`) → BIOS → `so_syscall_trampolim` → `so_chamada()`.
2. **Relógio** (interrupção 10) → BIOS (`retomada_escalonador`) → `escalonador_trampolim` → `so_trata_relogio()`.

As duas terminam em `so_retoma()`: escolhe quem executa e copia o quadro dele para o endereço fixo; o `rete`
retoma o escolhido.

**Estados e fila.** Toda mudança de estado passa por `muda_estado()`, que mantém a fila de prontos
(entra no fim ao ficar pronto: criado, desbloqueado ou preemptado), as métricas e a prioridade.

**Quantum.** `quantum_restante` recebe `QUANTUM` quando um processo é escolhido e perde 1 a cada tique. Ao chegar
a 0 o processo vai para o fim da fila (preempção) – se houver outro pronto; se não houver, só ganha quantum novo.

**Prioridade (ESCALONADOR 2).** Começa em 0,5 (500 milésimos). Ao perder a CPU:
`prio = (prio + 1000 × t_exec/QUANTUM) / 2`, com `t_exec = QUANTUM − quantum_restante`. O escalonador escolhe
o pronto de **menor** `prio` (empate: o que está antes na fila).

**Ocioso.** Sem processo pronto e com algum bloqueado por E/S, o kernel dá `rete` num laço em modo usuário
(`ociosa`) com interrupções ligadas; o tique seguinte chama `trata_pendencias` e tenta de novo. O tempo nesse
estado é o "tempo ocioso". Só bloqueados em `SO_ESPERA_PROC` = deadlock.

**Console.** A interrupção 8 está habilitada: o tratador da BIOS guarda os caracteres num buffer e o kernel
lê desse buffer (`bios_console_*`). Um pequeno wrapper no vetor 8 só conta as interrupções.
