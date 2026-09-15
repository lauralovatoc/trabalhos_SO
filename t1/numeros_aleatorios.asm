; ====================================================================
; Trabalho 1 - Sistemas Operacionais "A"
; Programa: Gerador de números aleatória em linguagem Assembly
; Aluna: Laura Lovato Camponogara
; ====================================================================

; ====================================================================
; Para obter um número aleatório de 000 a 999, utilizei a leitura do 
; clock inicial com um loop de espera ativa de teclado (exemplo eco.asm).
; ====================================================================

; Como usar: digite "c" + enter, depois "e<tecla>".


; inicialização da pilha
    .equ    pilha = 0x3F0               

    .org    0                           
    .dw     main, pilha, 0, 0          

    .org    0x80                        

main:                                    

        ; leitura do clock inicial para semente base (seed) na porta 0x0020 (relógio)
        inb     r0, 0x0020 

; Loop de espera ativa **idêntico ao do eco.asm**
_loop_espera: 
        
        add     r0, 7                   ; incrementa usando um número ímpar para alterar os bits a cada ciclo
        xor     r0, 0x5A5A              ; embaralha bits com uma máscara na operação XOR

        ; verifica porta de status da console (0x0002) -> bit 0: caractere recebido; bit 1: pronto para enviar
        in      r1, (2)                 ; le o reg de status da console 
        and     r1, 2                   ; isola "caractere recebido" usando a máscara binária 2
        cmp     r1, 0                   ; compara com zero -> verificar se há caractere recebido
        jmpc    z, _loop_espera         ; repete o loop até receber caractere

        ; leitura de caractere digitado na porta de console (0x0001)
        in      r1, (1)                 ; le caractere digitado na porta de console
        xor     r0, r1                  ; mistura esse valor com o valor acumulado no loop acima (r0)
        and     r0, 0x7FFF              ; máscara para limpar o bit de sinal -> queremos números positivos

; limitar valor 000 a 999
_mod_1000:          
        cmp     r0, 1000                ; compara o valor acumulado com o limite máximo de 1000
        jmpc    lt, _separa_digitos     ; se for menor, sai do loop
        sub     r0, 1000                ; se for maior ou igual, subtrai 1000
        jmpq    _mod_1000               ; repete 

_separa_digitos:                      
        ; inicia a conversão do número de r0 em centenas, dezenas e unidades.
        ; r0 tem o valor bruto (000..999)

        ld      r1, 0                   ; inicializa o reg r1 com zero para contar as centenas

_loop_centenas:                         ; conta quantas centenas há no valor de r0
        cmp     r0, 100                 ; compara o número restante com 100
        jmpc    lt, _fase_dezenas       ; se for menor, termina a contagem
        sub     r0, 100                 ; subtrai 100 do total
        add     r1, 1                   ; incrementa o contador da centena
        jmpq    _loop_centenas          ; repete

_fase_dezenas:                          ; conta quantas dezenas há no valor de r0
        ld      r2, 0                   ; inicializa o reg r2 com zero para contar as dezenas

_loop_dezenas:                          ; conta quantas dezenas há no valor restante de r0
        cmp     r0, 10                  ; compara o restante com 10
        jmpc    lt, _fase_unidades      ; se for menor, termina a contagem
        sub     r0, 10                  ; subtrai 10 do total
        add     r2, 1                   ; incrementa o contador da dezena
        jmpq    _loop_dezenas           ; repete


_fase_unidades:                         ; fase unidades e CONVERSÃO PARA ASCII
        add     r1, 48                  ; soma 48 ao valor numérico da centena para convertê-lo para o caractere ASCII
        out     r1, (1)                 ; imprime o caractere da centena na tela (porta 0x0001)

        add     r2, 48                  ; soma 48 ao valor numérico da dezena para convertê-lo para o caractere ASCII
        out     r2, (1)                 ; imprime o caractere da dezena na tela (porta 0x0001)

        add     r0, 48                  ; soma 48 ao valor numérico da unidade para convertê-lo para o caractere ASCII
        out     r0, (1)                 ; imprime o caractere da unidade na tela (porta 0x0001)

        ld      r3, 10                  ; carrega o código ASCII da quebra de linha ('\n')
        out     r3, (1)                 ; imprime a quebra de linha na tela (porta 0x0001)

_fim:                             
        jmpq    _fim                    ; loop infinito final para encerrar o programa
