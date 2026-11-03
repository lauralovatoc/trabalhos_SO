; ===== código gerado por mcc =====
.text
_f_atraso:
	push bp
	ld bp, sp
	sub sp, 2
	ld r0, 0
	st r0, (bp+-2)
_L671f58f6_4:
	ld r0, (bp+-2)
	push r0
	ld r0, 200
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L671f58f6_6
	ld r0, 0
	jmp _L671f58f6_7
_L671f58f6_6:
	ld r0, 1
_L671f58f6_7:
	cmp r0, 0
	jmpc eq, _L671f58f6_5
	ld r0, (bp+-2)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-2)
	jmp _L671f58f6_4
_L671f58f6_5:
	ld sp, bp
	pop bp
	ret
_f_processo_init:
	push bp
	ld bp, sp
	sub sp, 8
	ld r0, 73
	push r0
	call _f_so_escreve
	add sp, 2
	ld r0, 58
	push r0
	call _f_so_escreve
	add sp, 2
	ld r0, _f_cpuA
	push r0
	call _f_so_cria_proc
	add sp, 2
	st r0, (bp+-2)
	ld r0, _f_interativo1
	push r0
	call _f_so_cria_proc
	add sp, 2
	st r0, (bp+-4)
	ld r0, _f_interativo2
	push r0
	call _f_so_cria_proc
	add sp, 2
	st r0, (bp+-6)
	ld r0, (bp+-2)
	push r0
	call _f_so_espera_proc
	add sp, 2
	ld r0, (bp+-4)
	push r0
	call _f_so_espera_proc
	add sp, 2
	ld r0, (bp+-6)
	push r0
	call _f_so_espera_proc
	add sp, 2
	ld r0, 10
	push r0
	call _f_so_escreve
	add sp, 2
	ld sp, bp
	pop bp
	ret
_f_processoA:
	push bp
	ld bp, sp
	sub sp, 4
	ld r0, 0
	st r0, (bp+-2)
_L671f58f6_13:
	ld r0, (bp+-2)
	push r0
	ld r0, 5
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L671f58f6_16
	ld r0, 0
	jmp _L671f58f6_17
_L671f58f6_16:
	ld r0, 1
_L671f58f6_17:
	cmp r0, 0
	jmpc eq, _L671f58f6_15
	ld r0, 65
	push r0
	call _f_so_escreve
	add sp, 2
	call _f_atraso
_L671f58f6_14:
	ld r0, (bp+-2)
	push r0
	add r0, 1
	st r0, (bp+-2)
	pop r0
	jmp _L671f58f6_13
_L671f58f6_15:
	ld r0, _f_processoC
	push r0
	call _f_so_cria_proc
	add sp, 2
	st r0, (bp+-4)
	ld r0, 99
	push r0
	call _f_so_escreve
	add sp, 2
	ld r0, 48
	push r0
	ld r0, (bp+-4)
	ld r1, r0
	pop r0
	add r0, r1
	push r0
	call _f_so_escreve
	add sp, 2
	ld sp, bp
	pop bp
	ret
_f_processoB:
	push bp
	ld bp, sp
	sub sp, 2
	ld r0, 0
	st r0, (bp+-2)
_L671f58f6_23:
	ld r0, (bp+-2)
	push r0
	ld r0, 5
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L671f58f6_26
	ld r0, 0
	jmp _L671f58f6_27
_L671f58f6_26:
	ld r0, 1
_L671f58f6_27:
	cmp r0, 0
	jmpc eq, _L671f58f6_25
	ld r0, 66
	push r0
	call _f_so_escreve
	add sp, 2
	call _f_atraso
_L671f58f6_24:
	ld r0, (bp+-2)
	push r0
	add r0, 1
	st r0, (bp+-2)
	pop r0
	jmp _L671f58f6_23
_L671f58f6_25:
	ld sp, bp
	pop bp
	ret
_f_processoC:
	push bp
	ld bp, sp
	sub sp, 2
	ld r0, 0
	st r0, (bp+-2)
_L671f58f6_33:
	ld r0, (bp+-2)
	push r0
	ld r0, 3
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L671f58f6_36
	ld r0, 0
	jmp _L671f58f6_37
_L671f58f6_36:
	ld r0, 1
_L671f58f6_37:
	cmp r0, 0
	jmpc eq, _L671f58f6_35
	ld r0, 67
	push r0
	call _f_so_escreve
	add sp, 2
	call _f_atraso
_L671f58f6_34:
	ld r0, (bp+-2)
	push r0
	add r0, 1
	st r0, (bp+-2)
	pop r0
	jmp _L671f58f6_33
_L671f58f6_35:
	ld sp, bp
	pop bp
	ret
_f_leitor:
	push bp
	ld bp, sp
	sub sp, 2
	ld r0, 0
	st r0, (bp+-2)
_L671f58f6_42:
	ld r0, (bp+-2)
	push r0
	ld r0, 46
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc ne, _L671f58f6_44
	ld r0, 0
	jmp _L671f58f6_45
_L671f58f6_44:
	ld r0, 1
_L671f58f6_45:
	cmp r0, 0
	jmpc eq, _L671f58f6_43
	call _f_so_le
	st r0, (bp+-2)
	ld r0, (bp+-2)
	push r0
	call _f_so_escreve
	add sp, 2
	jmp _L671f58f6_42
_L671f58f6_43:
	ld sp, bp
	pop bp
	ret
_f_processoX:
	push bp
	ld bp, sp
	ld r0, 3
	push r0
	call _f_so_espera_proc
	add sp, 2
	ld sp, bp
	pop bp
	ret
_f_processoY:
	push bp
	ld bp, sp
	ld r0, 2
	push r0
	call _f_so_espera_proc
	add sp, 2
	ld sp, bp
	pop bp
	ret
_f_trabalha:
	push bp
	ld bp, sp
	sub sp, 4
	ld r0, 0
	st r0, (bp+-2)
_L671f58f6_55:
	ld r0, (bp+-2)
	push r0
	ld r0, 6
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L671f58f6_58
	ld r0, 0
	jmp _L671f58f6_59
_L671f58f6_58:
	ld r0, 1
_L671f58f6_59:
	cmp r0, 0
	jmpc eq, _L671f58f6_57
	ld r0, 0
	st r0, (bp+-4)
_L671f58f6_60:
	ld r0, (bp+-4)
	push r0
	ld r0, 3000
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L671f58f6_62
	ld r0, 0
	jmp _L671f58f6_63
_L671f58f6_62:
	ld r0, 1
_L671f58f6_63:
	cmp r0, 0
	jmpc eq, _L671f58f6_61
	ld r0, (bp+-4)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-4)
	jmp _L671f58f6_60
_L671f58f6_61:
	ld r0, (bp+4)
	push r0
	call _f_so_escreve
	add sp, 2
_L671f58f6_56:
	ld r0, (bp+-2)
	push r0
	add r0, 1
	st r0, (bp+-2)
	pop r0
	jmp _L671f58f6_55
_L671f58f6_57:
	ld sp, bp
	pop bp
	ret
_f_cpuA:
	push bp
	ld bp, sp
	ld r0, 65
	push r0
	call _f_trabalha
	add sp, 2
	ld sp, bp
	pop bp
	ret
_f_cpuB:
	push bp
	ld bp, sp
	ld r0, 66
	push r0
	call _f_trabalha
	add sp, 2
	ld sp, bp
	pop bp
	ret
_f_cpuC:
	push bp
	ld bp, sp
	ld r0, 67
	push r0
	call _f_trabalha
	add sp, 2
	ld sp, bp
	pop bp
	ret
_f_filho:
	push bp
	ld bp, sp
	ld sp, bp
	pop bp
	ret
_f_interativa:
	push bp
	ld bp, sp
	sub sp, 6
	ld r0, 0
	st r0, (bp+-2)
_L671f58f6_76:
	ld r0, (bp+-2)
	push r0
	ld r0, 6
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L671f58f6_79
	ld r0, 0
	jmp _L671f58f6_80
_L671f58f6_79:
	ld r0, 1
_L671f58f6_80:
	cmp r0, 0
	jmpc eq, _L671f58f6_78
	ld r0, 0
	st r0, (bp+-4)
_L671f58f6_81:
	ld r0, (bp+-4)
	push r0
	ld r0, 200
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L671f58f6_83
	ld r0, 0
	jmp _L671f58f6_84
_L671f58f6_83:
	ld r0, 1
_L671f58f6_84:
	cmp r0, 0
	jmpc eq, _L671f58f6_82
	ld r0, (bp+-4)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-4)
	jmp _L671f58f6_81
_L671f58f6_82:
	ld r0, (bp+4)
	push r0
	call _f_so_escreve
	add sp, 2
	ld r0, _f_filho
	push r0
	call _f_so_cria_proc
	add sp, 2
	st r0, (bp+-6)
	ld r0, (bp+-6)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc gt, _L671f58f6_85
	ld r0, 0
	jmp _L671f58f6_86
_L671f58f6_85:
	ld r0, 1
_L671f58f6_86:
	cmp r0, 0
	jmpc eq, _L671f58f6_87
	ld r0, (bp+-6)
	push r0
	call _f_so_espera_proc
	add sp, 2
_L671f58f6_87:
_L671f58f6_77:
	ld r0, (bp+-2)
	push r0
	add r0, 1
	st r0, (bp+-2)
	pop r0
	jmp _L671f58f6_76
_L671f58f6_78:
	ld sp, bp
	pop bp
	ret
_f_interativo1:
	push bp
	ld bp, sp
	ld r0, 120
	push r0
	call _f_interativa
	add sp, 2
	ld sp, bp
	pop bp
	ret
_f_interativo2:
	push bp
	ld bp, sp
	ld r0, 121
	push r0
	call _f_interativa
	add sp, 2
	ld sp, bp
	pop bp
	ret

.data

; ----- literais de string -----
