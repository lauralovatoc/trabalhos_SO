; ponte.asm -- Partes I, II e III. Tudo que o C do mcc nao expoe (portas,
; halt, trap, rete manual) e a traducao entre as convencoes de chamada:
;   BIOS: argumentos em r0..r3, resultado em r0, nada empilhado
;   mcc : argumentos empilhados (direita -> esquerda), resultado em r0,
;         rotulo "_f_<nome>" para funcoes e "_g_<nome>" para globais
; Este arquivo, bios.asm e kernel.asm/programas.asm sao montados JUNTOS (um
; modulo so): nao precisa de .ext/.pub.

; ================================================================
; 1) Rotinas de uso EXCLUSIVO do kernel (modo supervisor)
; ================================================================

; void console_escreve(int c)
_f_console_escreve:
        push    bp
        ld      bp, sp
        ld      r0, (bp+4)
        outb    r0, (1)
        ld      sp, bp
        pop     bp
        ret

; void console_imprime(char *s)   -- usa bios_imprime (r0 = string)
_f_console_imprime:
        push    bp
        ld      bp, sp
        ld      r0, (bp+4)
        call    bios_imprime
        ld      sp, bp
        pop     bp
        ret

; void console_imprime_int(int v) -- usa bios_imprime_dec (r0 = valor)
_f_console_imprime_int:
        push    bp
        ld      bp, sp
        ld      r0, (bp+4)
        call    bios_imprime_dec
        ld      sp, bp
        pop     bp
        ret

; Parte III: a interrupcao 8 (console) esta habilitada e o tratador da BIOS
; guarda os caracteres num buffer circular -- por isso a leitura "normal"
; passa a ser pelo buffer da BIOS (a BIOS ja esvaziou a porta). Misturar as
; duas fontes perderia caracteres.

; int console_pronto_leitura(void)  -- != 0 se ha caractere no buffer da BIOS
_f_console_pronto_leitura:
        jmp     bios_console_disponivel         ; r0 = n; o "ret" de la volta ao C

; int console_le_caractere(void)    -- tira 1 caractere do buffer da BIOS
_f_console_le_caractere:
        jmp     bios_console_le

; int console_pronto_escrita(void)  -- != 0 se a console aceita um caractere
; (mancha.pdf, tabela 17: porta 2 = bits [--rs], s=pronto para enviar)
_f_console_pronto_escrita:
        inb     r0, (2)
        and     r0, 1
        ret

; Leitura DIRETA da porta: so usar com as interrupcoes mascaradas (D=1, dentro
; do kernel), por exemplo para pausar o relatorio final.
_f_console_raw_pronto:
        inb     r0, (2)
        and     r0, 2
        ret

_f_console_raw_le:
        inb     r0, (1)
        and     r0, 255
        ret

; void para_sistema(void)
_f_para_sistema:
        halt

; int so_tiques(void) -- tiques do relogio desde o boot (contador da BIOS)
_f_so_tiques:
        ld      r0, (contador_tiques)
        ret

; int so_cont_console(void) -- interrupcoes de console (8) contadas por
; so_console_trampolim
_f_so_cont_console:
        ld      r0, (_so_cont_console)
        ret

; void ociosa(void) -- contexto "nenhum processo pronto": laco em modo usuario
; (sr=0) com as interrupcoes ligadas. O proximo tique do relogio tira o
; controle daqui e devolve ao kernel.
_f_ociosa:
        jmp     _f_ociosa

; ================================================================
; 2) Stubs de chamada de sistema, para os PROCESSOS (modo usuario)
;    "ld r1,(sp+2)": logo na entrada, (sp) e o endereco de retorno e
;    (sp+2) o 1o argumento (convencao do mcc)
; ================================================================

; int so_le(void)
_f_so_le:
        ld      r0, 0                   ; SO_LE
        trap    7
        ret

; int so_escreve(int c)
_f_so_escreve:
        ld      r1, (sp+2)
        ld      r0, 1                   ; SO_ESCREVE
        trap    7
        ret

; int so_cria_proc(void (*entrada)(void))
_f_so_cria_proc:
        ld      r1, (sp+2)
        ld      r0, 2                   ; SO_CRIA_PROC
        trap    7
        ret

; int so_mata_proc(int pid)   (pid 0 = o proprio processo)
_f_so_mata_proc:
        ld      r1, (sp+2)
        ld      r0, 3                   ; SO_MATA_PROC
        trap    7
        ret

; int so_espera_proc(int pid)
_f_so_espera_proc:
        ld      r1, (sp+2)
        ld      r0, 4                   ; SO_ESPERA_PROC
        trap    7
        ret

; void so_encerra(void) -- "return" de um processo cai aqui
_f_so_encerra:
        ld      r0, 3                   ; SO_MATA_PROC
        ld      r1, 0                   ; pid 0 = eu mesmo
        trap    7
_encerra_laco:                          ; nunca deve chegar aqui (processo morto)
        jmp     _encerra_laco

; ================================================================
; 3) Pontes de entrada no kernel (BIOS -> C)
; ================================================================

; --- chamada de sistema ---------------------------------------------------
; Entra por "call bp" da BIOS: (sp) = endereco de retorno e o quadro
; de 16 palavras do processo esta em sp+2. r0 = numero, r1..r3 = args.
;   int so_chamada(int num, int a1, int a2, int a3, int *quadro)
so_syscall_trampolim:
        ld      r4, sp
        add     r4, 2                   ; r4 = endereco do quadro
        push    r4                      ; 5o parametro: quadro
        push    r3                      ; 4o: a3
        push    r2                      ; 3o: a2
        push    r1                      ; 2o: a1
        push    r0                      ; 1o: num
        call    _f_so_chamada
        add     sp, 10
        ret                             ; resultado em r0; a BIOS grava no quadro e faz rete

; --- tique do relogio (interrupcao 10) ------------------------------------
; Instalado em retomada_escalonador: a BIOS chega aqui por JMP (nao CALL),
; com sp apontando para o quadro de 16 palavras recem-empilhado. so_trata_relogio
; escreve o resultado DIRETO nesse quadro (processo escolhido, ou contexto
; ocioso); quando ela retorna, so falta o "rete".
;   void so_trata_relogio(int *quadro)
escalonador_trampolim:
        ld      r1, sp                  ; endereco do quadro, ANTES de mexer na pilha
        push    r1
        call    _f_so_trata_relogio
        add     sp, 2
        rete

; --- interrupcao 8 (console): so conta e entrega ao tratador da BIOS -------
; (os registradores ja estao salvos no quadro, entao sujar r0 aqui e seguro)
so_console_trampolim:
        ld      r0, (_so_cont_console)
        add     r0, 1
        st      r0, (_so_cont_console)
        jmp     _bios_trata_console

; ================================================================
; 4) Inicializacao (chamada por bios.asm/_start com sp = pilha_nucleo,
;    interrupcoes externas DESLIGADAS: SR.D=1)
; ================================================================
_kernel_inicio:
        ; programa o relogio: limite = relogio_limite (variavel global do C,
        ; kernel.c, inicializada com RELOGIO_LIMITE de config.h)
        ld      r0, (_g_relogio_limite)
        ld      r1, r0
        shr     r1, 8
        outb    r1, (0x22)              ; PORTA_RELOGIO_LIM_ALTO
        outb    r0, (0x23)              ; PORTA_RELOGIO_LIM_BAIXO

        ; habilita interrupcoes de console (bit0 = int 8) e relogio (bit2 = int 10)
        ld      r0, 5
        outb    r0, (0x30)              ; PORTA_CTRL_INTERRUPCOES

        ; liga o tique do relogio ao kernel em C
        ld      r0, escalonador_trampolim
        st      r0, (retomada_escalonador)

        ; vetor de interrupcoes, quadro 8 (console): campo "ip" fica em 8*8 = 64
        ld      r0, so_console_trampolim
        st      r0, (64)

        ; instala so_syscall_trampolim em tabela_syscalls[0..4]
        ld      r1, 0
        ld      r2, tabela_syscalls
_ki_laco:
        cmp     r1, 5
        jmpc    ge, _ki_fim
        ld      r3, so_syscall_trampolim
        st      r3, (r2)
        add     r2, 2
        add     r1, 1
        jmp     _ki_laco
_ki_fim:

        ; cria o init: o C escreve o quadro inicial dele em pilha_sistema-32
        ld      r0, pilha_sistema
        add     r0, -32
        push    r0
        call    _f_inicializa_processos
        add     sp, 2

        ; primeiro "rete" manual: sp precisa apontar para o quadro escrito.
        ; NAO ha "ei": o sr do init tem D=0, e o "rete" o restaura -- as
        ; interrupcoes so ligam quando o init ja esta de fato executando.
        ld      sp, pilha_sistema
        add     sp, -32
        rete

        .data
_so_cont_console:
        .dw     0
