MCC       = ../compilador_c/bin/mcc
MONTADOR  = ../simulador_completo/bin/montador
SIMULADOR = ../simulador_completo/bin/simulador
BIOS      = ../bios_mancha/src/bios.asm

all: sistema.mob

# C -> assembly do Mancha. 
# kernel.c inclui config.h/kernel.h e os .inc
kernel.asm: kernel.c kernel.h config.h metricas.inc escalonador.inc
	$(MCC) kernel.c -o kernel.asm

programas.asm: programas.c kernel.h config.h
	$(MCC) programas.c -o programas.asm

# BIOS + ponte + kernel + programas, montados juntos num modulo so
sistema.mob: $(BIOS) ponte.asm kernel.asm programas.asm
	$(MONTADOR) $(BIOS) ponte.asm kernel.asm programas.asm -o sistema.mob

run: sistema.mob
	$(SIMULADOR) sistema.mob

clean:
	rm -f kernel.asm programas.asm sistema.mob

.PHONY: all run clean
