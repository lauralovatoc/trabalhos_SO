; ===== código gerado por mcc =====
.text
_f_idx_estado:
	push bp
	ld bp, sp
	ld r0, (bp+4)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L671858be_9
	ld r0, 0
	jmp _L671858be_10
_L671858be_9:
	ld r0, 1
_L671858be_10:
	cmp r0, 0
	jmpc eq, _L671858be_11
	ld r0, 0
	ld sp, bp
	pop bp
	ret
_L671858be_11:
	ld r0, (bp+4)
	push r0
	ld r0, 4
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L671858be_12
	ld r0, 0
	jmp _L671858be_13
_L671858be_12:
	ld r0, 1
_L671858be_13:
	cmp r0, 0
	jmpc eq, _L671858be_14
	ld r0, 1
	ld sp, bp
	pop bp
	ret
_L671858be_14:
	ld r0, (bp+4)
	push r0
	ld r0, 2
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L671858be_15
	ld r0, 0
	jmp _L671858be_16
_L671858be_15:
	ld r0, 1
_L671858be_16:
	cmp r0, 0
	jmpc eq, _L671858be_17
	ld r0, 2
	ld sp, bp
	pop bp
	ret
_L671858be_17:
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld sp, bp
	pop bp
	ret
	ld sp, bp
	pop bp
	ret
_f_met_cria:
	push bp
	ld bp, sp
	sub sp, 2
	ld r0, 0
	st r0, (bp+-2)
_L671858be_23:
	ld r0, (bp+-2)
	push r0
	ld r0, 3
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L671858be_26
	ld r0, 0
	jmp _L671858be_27
_L671858be_26:
	ld r0, 1
_L671858be_27:
	cmp r0, 0
	jmpc eq, _L671858be_25
	ld r0, _g_met
	push r0
	ld r0, (bp+4)
	mul r0, 28
	pop r1
	add r1, r0
	ld r0, r1
	add r0, 8
	push r0
	ld r0, (bp+-2)
	mul r0, 2
	pop r1
	add r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1)
	ld r0, _g_met
	push r0
	ld r0, (bp+4)
	mul r0, 28
	pop r1
	add r1, r0
	ld r0, r1
	add r0, 14
	push r0
	ld r0, (bp+-2)
	mul r0, 2
	pop r1
	add r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1)
_L671858be_24:
	ld r0, (bp+-2)
	push r0
	add r0, 1
	st r0, (bp+-2)
	pop r0
	jmp _L671858be_23
_L671858be_25:
	ld r0, _g_met
	push r0
	ld r0, (bp+4)
	mul r0, 28
	pop r1
	add r1, r0
	push r1
	call _f_so_tiques
	pop r1
	st r0, (r1)
	ld r0, _g_met
	push r0
	ld r0, (bp+4)
	mul r0, 28
	pop r1
	add r1, r0
	push r1
	ld r0, 1
	xor r0, -1
	add r0, 1
	pop r1
	st r0, (r1+2)
	ld r0, _g_met
	push r0
	ld r0, (bp+4)
	mul r0, 28
	pop r1
	add r1, r0
	push r1
	ld r0, _g_met
	push r0
	ld r0, (bp+4)
	mul r0, 28
	pop r1
	add r1, r0
	ld r0, (r1)
	pop r1
	st r0, (r1+4)
	ld r0, _g_met
	push r0
	ld r0, (bp+4)
	mul r0, 28
	pop r1
	add r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1+6)
	ld r0, _g_met
	push r0
	ld r0, (bp+4)
	mul r0, 28
	pop r1
	add r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1+20)
	ld r0, _g_met
	push r0
	ld r0, (bp+4)
	mul r0, 28
	pop r1
	add r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1+22)
	ld r0, _g_met
	push r0
	ld r0, (bp+4)
	mul r0, 28
	pop r1
	add r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1+24)
	ld r0, _g_met
	push r0
	ld r0, (bp+4)
	mul r0, 28
	pop r1
	add r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1+26)
	ld sp, bp
	pop bp
	ret
_f_met_fecha_tempos:
	push bp
	ld bp, sp
	sub sp, 8
	call _f_so_tiques
	st r0, (bp+-8)
	ld r0, 0
	st r0, (bp+-2)
_L671858be_45:
	ld r0, (bp+-2)
	push r0
	ld r0, 16
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L671858be_48
	ld r0, 0
	jmp _L671858be_49
_L671858be_48:
	ld r0, 1
_L671858be_49:
	cmp r0, 0
	jmpc eq, _L671858be_47
	ld r0, _g_tabela_processos
	push r0
	ld r0, (bp+-2)
	mul r0, 170
	pop r1
	add r1, r0
	ld r0, (r1+2)
	push r0
	call _f_idx_estado
	add sp, 2
	st r0, (bp+-4)
	ld r0, _g_tabela_processos
	push r0
	ld r0, (bp+-2)
	mul r0, 170
	pop r1
	add r1, r0
	ld r0, (r1)
	st r0, (bp+-6)
	ld r0, (bp+-4)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc ge, _L671858be_54
	ld r0, 0
	jmp _L671858be_55
_L671858be_54:
	ld r0, 1
_L671858be_55:
	cmp r0, 0
	jmpc eq, _L671858be_53
	ld r0, (bp+-6)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc gt, _L671858be_56
	ld r0, 0
	jmp _L671858be_57
_L671858be_56:
	ld r0, 1
_L671858be_57:
	cmp r0, 0
	jmpc eq, _L671858be_53
	ld r0, 1
	jmp _L671858be_52
_L671858be_53:
	ld r0, 0
_L671858be_52:
	cmp r0, 0
	jmpc eq, _L671858be_51
	ld r0, (bp+-6)
	push r0
	ld r0, 32
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L671858be_58
	ld r0, 0
	jmp _L671858be_59
_L671858be_58:
	ld r0, 1
_L671858be_59:
	cmp r0, 0
	jmpc eq, _L671858be_51
	ld r0, 1
	jmp _L671858be_50
_L671858be_51:
	ld r0, 0
_L671858be_50:
	cmp r0, 0
	jmpc eq, _L671858be_60
	ld r0, _g_met
	push r0
	ld r0, (bp+-6)
	mul r0, 28
	pop r1
	add r1, r0
	ld r0, r1
	add r0, 14
	push r0
	ld r0, (bp+-4)
	mul r0, 2
	pop r1
	add r1, r0
	push r1
	ld r0, _g_met
	push r0
	ld r0, (bp+-6)
	mul r0, 28
	pop r1
	add r1, r0
	ld r0, r1
	add r0, 14
	push r0
	ld r0, (bp+-4)
	mul r0, 2
	pop r1
	add r1, r0
	ld r0, (r1)
	push r0
	ld r0, (bp+-8)
	push r0
	ld r0, _g_met
	push r0
	ld r0, (bp+-6)
	mul r0, 28
	pop r1
	add r1, r0
	ld r0, (r1+4)
	ld r1, r0
	pop r0
	sub r0, r1
	ld r1, r0
	pop r0
	add r0, r1
	pop r1
	st r0, (r1)
	ld r0, _g_met
	push r0
	ld r0, (bp+-6)
	mul r0, 28
	pop r1
	add r1, r0
	push r1
	ld r0, (bp+-8)
	pop r1
	st r0, (r1+4)
_L671858be_60:
_L671858be_46:
	ld r0, (bp+-2)
	push r0
	add r0, 1
	st r0, (bp+-2)
	pop r0
	jmp _L671858be_45
_L671858be_47:
	ld r0, (_g_em_ocioso)
	cmp r0, 0
	jmpc eq, _L671858be_61
	ld r0, (_g_tempo_ocioso)
	push r0
	ld r0, (bp+-8)
	push r0
	ld r0, (_g_ocioso_desde)
	ld r1, r0
	pop r0
	sub r0, r1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (_g_tempo_ocioso)
	ld r0, 0
	st r0, (_g_em_ocioso)
_L671858be_61:
	ld sp, bp
	pop bp
	ret
_f_rel_pausa:
	push bp
	ld bp, sp
	sub sp, 2
	ld r0, 0
	st r0, (bp+-2)
	ld r0, _str671858be_1
	push r0
	call _f_console_imprime
	add sp, 2
_L671858be_70:
	call _f_console_raw_pronto
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L671858be_72
	ld r0, 0
	jmp _L671858be_73
_L671858be_72:
	ld r0, 1
_L671858be_73:
	cmp r0, 0
	jmpc eq, _L671858be_71
	ld r0, (bp+-2)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (bp+-2)
	jmp _L671858be_70
_L671858be_71:
_L671858be_74:
	call _f_console_raw_pronto
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc ne, _L671858be_76
	ld r0, 0
	jmp _L671858be_77
_L671858be_76:
	ld r0, 1
_L671858be_77:
	cmp r0, 0
	jmpc eq, _L671858be_75
	call _f_console_raw_le
	st r0, (bp+-2)
	jmp _L671858be_74
_L671858be_75:
	ld r0, 10
	push r0
	call _f_console_escreve
	add sp, 2
	ld sp, bp
	pop bp
	ret
_f_rel_nl:
	push bp
	ld bp, sp
	ld r0, 10
	push r0
	call _f_console_escreve
	add sp, 2
	ld r0, (_g_linhas_pag)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (_g_linhas_pag)
	ld r0, (_g_linhas_pag)
	push r0
	ld r0, 4
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc ge, _L671858be_81
	ld r0, 0
	jmp _L671858be_82
_L671858be_81:
	ld r0, 1
_L671858be_82:
	cmp r0, 0
	jmpc eq, _L671858be_83
	ld r0, 0
	st r0, (_g_linhas_pag)
	call _f_rel_pausa
_L671858be_83:
	ld sp, bp
	pop bp
	ret
_f_rel_num:
	push bp
	ld bp, sp
	ld r0, (bp+4)
	push r0
	call _f_console_imprime
	add sp, 2
	ld r0, (bp+6)
	push r0
	call _f_console_imprime_int
	add sp, 2
	ld sp, bp
	pop bp
	ret
_f_relatorio_final:
	push bp
	ld bp, sp
	sub sp, 4
	ld r0, 0
	st r0, (_g_linhas_pag)
	ld r0, _str671858be_19
	push r0
	call _f_console_imprime
	add sp, 2
	ld r0, 3
	push r0
	ld r0, _str671858be_20
	push r0
	call _f_rel_num
	add sp, 4
	ld r0, (_g_proximo_pid)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	sub r0, r1
	push r0
	ld r0, _str671858be_21
	push r0
	call _f_rel_num
	add sp, 4
	ld r0, (_g_preempcoes_total)
	push r0
	ld r0, _str671858be_22
	push r0
	call _f_rel_num
	add sp, 4
	call _f_rel_nl
	call _f_so_tiques
	push r0
	ld r0, _str671858be_23
	push r0
	call _f_rel_num
	add sp, 4
	ld r0, (_g_tempo_ocioso)
	push r0
	ld r0, _str671858be_24
	push r0
	call _f_rel_num
	add sp, 4
	ld r0, _g_cont_int
	push r0
	ld r0, 10
	mul r0, 2
	pop r1
	add r1, r0
	ld r0, (r1)
	push r0
	ld r0, _str671858be_25
	push r0
	call _f_rel_num
	add sp, 4
	ld r0, _g_cont_int
	push r0
	ld r0, 7
	mul r0, 2
	pop r1
	add r1, r0
	ld r0, (r1)
	push r0
	ld r0, _str671858be_26
	push r0
	call _f_rel_num
	add sp, 4
	call _f_so_cont_console
	push r0
	ld r0, _str671858be_27
	push r0
	call _f_rel_num
	add sp, 4
	call _f_rel_nl
	ld r0, _str671858be_28
	push r0
	call _f_console_imprime
	add sp, 2
	call _f_rel_nl
	ld r0, 1
	st r0, (bp+-2)
_L671858be_99:
	ld r0, (bp+-2)
	push r0
	ld r0, (_g_proximo_pid)
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L671858be_102
	ld r0, 0
	jmp _L671858be_103
_L671858be_102:
	ld r0, 1
_L671858be_103:
	cmp r0, 0
	jmpc eq, _L671858be_101
	ld r0, (bp+-2)
	push r0
	ld r0, 32
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L671858be_104
	ld r0, 0
	jmp _L671858be_105
_L671858be_104:
	ld r0, 1
_L671858be_105:
	cmp r0, 0
	jmpc eq, _L671858be_106
	ld r0, (bp+-2)
	push r0
	ld r0, _str671858be_29
	push r0
	call _f_rel_num
	add sp, 4
	ld r0, _g_met
	push r0
	ld r0, (bp+-2)
	mul r0, 28
	pop r1
	add r1, r0
	ld r0, (r1+2)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc ge, _L671858be_107
	ld r0, 0
	jmp _L671858be_108
_L671858be_107:
	ld r0, 1
_L671858be_108:
	cmp r0, 0
	jmpc eq, _L671858be_109
	ld r0, _g_met
	push r0
	ld r0, (bp+-2)
	mul r0, 28
	pop r1
	add r1, r0
	ld r0, (r1+2)
	push r0
	ld r0, _g_met
	push r0
	ld r0, (bp+-2)
	mul r0, 28
	pop r1
	add r1, r0
	ld r0, (r1)
	ld r1, r0
	pop r0
	sub r0, r1
	push r0
	ld r0, _str671858be_30
	push r0
	call _f_rel_num
	add sp, 4
	jmp _L671858be_110
_L671858be_109:
	ld r0, _str671858be_31
	push r0
	call _f_console_imprime
	add sp, 2
_L671858be_110:
	ld r0, _g_met
	push r0
	ld r0, (bp+-2)
	mul r0, 28
	pop r1
	add r1, r0
	ld r0, (r1+6)
	push r0
	ld r0, _str671858be_32
	push r0
	call _f_rel_num
	add sp, 4
	ld r0, 0
	st r0, (bp+-4)
	ld r0, _g_met
	push r0
	ld r0, (bp+-2)
	mul r0, 28
	pop r1
	add r1, r0
	ld r0, (r1+22)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc gt, _L671858be_111
	ld r0, 0
	jmp _L671858be_112
_L671858be_111:
	ld r0, 1
_L671858be_112:
	cmp r0, 0
	jmpc eq, _L671858be_113
	ld r0, _g_met
	push r0
	ld r0, (bp+-2)
	mul r0, 28
	pop r1
	add r1, r0
	ld r0, (r1+20)
	push r0
	ld r0, _g_met
	push r0
	ld r0, (bp+-2)
	mul r0, 28
	pop r1
	add r1, r0
	ld r0, (r1+22)
	ld r1, r0
	pop r0
	div r0, r1
	st r0, (bp+-4)
_L671858be_113:
	ld r0, (bp+-4)
	push r0
	ld r0, _str671858be_33
	push r0
	call _f_rel_num
	add sp, 4
	ld r0, _g_met
	push r0
	ld r0, (bp+-2)
	mul r0, 28
	pop r1
	add r1, r0
	ld r0, (r1+22)
	push r0
	ld r0, _str671858be_34
	push r0
	call _f_rel_num
	add sp, 4
	ld r0, 41
	push r0
	call _f_console_escreve
	add sp, 2
	ld r0, 32
	push r0
	call _f_console_escreve
	add sp, 2
	ld r0, _g_met
	push r0
	ld r0, (bp+-2)
	mul r0, 28
	pop r1
	add r1, r0
	ld r0, r1
	add r0, 8
	push r0
	ld r0, 0
	mul r0, 2
	pop r1
	add r1, r0
	ld r0, (r1)
	push r0
	call _f_console_imprime_int
	add sp, 2
	ld r0, 47
	push r0
	call _f_console_escreve
	add sp, 2
	ld r0, _g_met
	push r0
	ld r0, (bp+-2)
	mul r0, 28
	pop r1
	add r1, r0
	ld r0, r1
	add r0, 8
	push r0
	ld r0, 1
	mul r0, 2
	pop r1
	add r1, r0
	ld r0, (r1)
	push r0
	call _f_console_imprime_int
	add sp, 2
	ld r0, 47
	push r0
	call _f_console_escreve
	add sp, 2
	ld r0, _g_met
	push r0
	ld r0, (bp+-2)
	mul r0, 28
	pop r1
	add r1, r0
	ld r0, r1
	add r0, 8
	push r0
	ld r0, 2
	mul r0, 2
	pop r1
	add r1, r0
	ld r0, (r1)
	push r0
	call _f_console_imprime_int
	add sp, 2
	ld r0, 32
	push r0
	call _f_console_escreve
	add sp, 2
	ld r0, _g_met
	push r0
	ld r0, (bp+-2)
	mul r0, 28
	pop r1
	add r1, r0
	ld r0, r1
	add r0, 14
	push r0
	ld r0, 0
	mul r0, 2
	pop r1
	add r1, r0
	ld r0, (r1)
	push r0
	call _f_console_imprime_int
	add sp, 2
	ld r0, 47
	push r0
	call _f_console_escreve
	add sp, 2
	ld r0, _g_met
	push r0
	ld r0, (bp+-2)
	mul r0, 28
	pop r1
	add r1, r0
	ld r0, r1
	add r0, 14
	push r0
	ld r0, 1
	mul r0, 2
	pop r1
	add r1, r0
	ld r0, (r1)
	push r0
	call _f_console_imprime_int
	add sp, 2
	ld r0, 47
	push r0
	call _f_console_escreve
	add sp, 2
	ld r0, _g_met
	push r0
	ld r0, (bp+-2)
	mul r0, 28
	pop r1
	add r1, r0
	ld r0, r1
	add r0, 14
	push r0
	ld r0, 2
	mul r0, 2
	pop r1
	add r1, r0
	ld r0, (r1)
	push r0
	call _f_console_imprime_int
	add sp, 2
	call _f_rel_nl
_L671858be_106:
_L671858be_100:
	ld r0, (bp+-2)
	push r0
	add r0, 1
	st r0, (bp+-2)
	pop r0
	jmp _L671858be_99
_L671858be_101:
	ld r0, _str671858be_35
	push r0
	call _f_console_imprime
	add sp, 2
	ld r0, 10
	push r0
	call _f_console_escreve
	add sp, 2
	ld sp, bp
	pop bp
	ret
_f_fila_entra:
	push bp
	ld bp, sp
	ld r0, _g_fila
	push r0
	ld r0, (_g_fila_n)
	mul r0, 2
	pop r1
	add r1, r0
	push r1
	ld r0, (bp+4)
	pop r1
	st r0, (r1)
	ld r0, (_g_fila_n)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (_g_fila_n)
	ld sp, bp
	pop bp
	ret
_f_fila_remove:
	push bp
	ld bp, sp
	sub sp, 4
	ld r0, 1
	xor r0, -1
	add r0, 1
	st r0, (bp+-4)
	ld r0, 0
	st r0, (bp+-2)
_L671858be_134:
	ld r0, (bp+-2)
	push r0
	ld r0, (_g_fila_n)
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L671858be_137
	ld r0, 0
	jmp _L671858be_138
_L671858be_137:
	ld r0, 1
_L671858be_138:
	cmp r0, 0
	jmpc eq, _L671858be_136
	ld r0, _g_fila
	push r0
	ld r0, (bp+-2)
	mul r0, 2
	pop r1
	add r1, r0
	ld r0, (r1)
	push r0
	ld r0, (bp+4)
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L671858be_141
	ld r0, 0
	jmp _L671858be_142
_L671858be_141:
	ld r0, 1
_L671858be_142:
	cmp r0, 0
	jmpc eq, _L671858be_140
	ld r0, (bp+-4)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L671858be_143
	ld r0, 0
	jmp _L671858be_144
_L671858be_143:
	ld r0, 1
_L671858be_144:
	cmp r0, 0
	jmpc eq, _L671858be_140
	ld r0, 1
	jmp _L671858be_139
_L671858be_140:
	ld r0, 0
_L671858be_139:
	cmp r0, 0
	jmpc eq, _L671858be_145
	ld r0, (bp+-2)
	st r0, (bp+-4)
_L671858be_145:
_L671858be_135:
	ld r0, (bp+-2)
	push r0
	add r0, 1
	st r0, (bp+-2)
	pop r0
	jmp _L671858be_134
_L671858be_136:
	ld r0, (bp+-4)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L671858be_146
	ld r0, 0
	jmp _L671858be_147
_L671858be_146:
	ld r0, 1
_L671858be_147:
	cmp r0, 0
	jmpc eq, _L671858be_148
	ld sp, bp
	pop bp
	ret
_L671858be_148:
	ld r0, (bp+-4)
	st r0, (bp+-2)
_L671858be_149:
	ld r0, (bp+-2)
	push r0
	ld r0, (_g_fila_n)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	sub r0, r1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L671858be_152
	ld r0, 0
	jmp _L671858be_153
_L671858be_152:
	ld r0, 1
_L671858be_153:
	cmp r0, 0
	jmpc eq, _L671858be_151
	ld r0, _g_fila
	push r0
	ld r0, (bp+-2)
	mul r0, 2
	pop r1
	add r1, r0
	push r1
	ld r0, _g_fila
	push r0
	ld r0, (bp+-2)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	mul r0, 2
	pop r1
	add r1, r0
	ld r0, (r1)
	pop r1
	st r0, (r1)
_L671858be_150:
	ld r0, (bp+-2)
	push r0
	add r0, 1
	st r0, (bp+-2)
	pop r0
	jmp _L671858be_149
_L671858be_151:
	ld r0, (_g_fila_n)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	sub r0, r1
	st r0, (_g_fila_n)
	ld sp, bp
	pop bp
	ret
_f_muda_estado:
	push bp
	ld bp, sp
	sub sp, 12
	ld r0, _g_tabela_processos
	push r0
	ld r0, (bp+4)
	mul r0, 170
	pop r1
	add r1, r0
	ld r0, (r1+2)
	st r0, (bp+-2)
	ld r0, (bp+-2)
	push r0
	ld r0, (bp+6)
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L671858be_211
	ld r0, 0
	jmp _L671858be_212
_L671858be_211:
	ld r0, 1
_L671858be_212:
	cmp r0, 0
	jmpc eq, _L671858be_213
	ld sp, bp
	pop bp
	ret
_L671858be_213:
	ld r0, _g_tabela_processos
	push r0
	ld r0, (bp+4)
	mul r0, 170
	pop r1
	add r1, r0
	ld r0, (r1)
	st r0, (bp+-4)
	call _f_so_tiques
	st r0, (bp+-6)
	ld r0, 0
	st r0, (bp+-12)
	ld r0, (bp+-4)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc gt, _L671858be_216
	ld r0, 0
	jmp _L671858be_217
_L671858be_216:
	ld r0, 1
_L671858be_217:
	cmp r0, 0
	jmpc eq, _L671858be_215
	ld r0, (bp+-4)
	push r0
	ld r0, 32
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L671858be_218
	ld r0, 0
	jmp _L671858be_219
_L671858be_218:
	ld r0, 1
_L671858be_219:
	cmp r0, 0
	jmpc eq, _L671858be_215
	ld r0, 1
	jmp _L671858be_214
_L671858be_215:
	ld r0, 0
_L671858be_214:
	cmp r0, 0
	jmpc eq, _L671858be_220
	ld r0, 1
	st r0, (bp+-12)
_L671858be_220:
	ld r0, (bp+-12)
	cmp r0, 0
	jmpc eq, _L671858be_221
	ld r0, (bp+-2)
	push r0
	call _f_idx_estado
	add sp, 2
	st r0, (bp+-8)
	ld r0, (bp+-8)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc ge, _L671858be_222
	ld r0, 0
	jmp _L671858be_223
_L671858be_222:
	ld r0, 1
_L671858be_223:
	cmp r0, 0
	jmpc eq, _L671858be_224
	ld r0, _g_met
	push r0
	ld r0, (bp+-4)
	mul r0, 28
	pop r1
	add r1, r0
	ld r0, r1
	add r0, 14
	push r0
	ld r0, (bp+-8)
	mul r0, 2
	pop r1
	add r1, r0
	push r1
	ld r0, _g_met
	push r0
	ld r0, (bp+-4)
	mul r0, 28
	pop r1
	add r1, r0
	ld r0, r1
	add r0, 14
	push r0
	ld r0, (bp+-8)
	mul r0, 2
	pop r1
	add r1, r0
	ld r0, (r1)
	push r0
	ld r0, (bp+-6)
	push r0
	ld r0, _g_met
	push r0
	ld r0, (bp+-4)
	mul r0, 28
	pop r1
	add r1, r0
	ld r0, (r1+4)
	ld r1, r0
	pop r0
	sub r0, r1
	ld r1, r0
	pop r0
	add r0, r1
	pop r1
	st r0, (r1)
_L671858be_224:
	ld r0, (bp+6)
	push r0
	call _f_idx_estado
	add sp, 2
	st r0, (bp+-8)
	ld r0, (bp+-8)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc ge, _L671858be_225
	ld r0, 0
	jmp _L671858be_226
_L671858be_225:
	ld r0, 1
_L671858be_226:
	cmp r0, 0
	jmpc eq, _L671858be_227
	ld r0, _g_met
	push r0
	ld r0, (bp+-4)
	mul r0, 28
	pop r1
	add r1, r0
	ld r0, r1
	add r0, 8
	push r0
	ld r0, (bp+-8)
	mul r0, 2
	pop r1
	add r1, r0
	push r1
	ld r0, _g_met
	push r0
	ld r0, (bp+-4)
	mul r0, 28
	pop r1
	add r1, r0
	ld r0, r1
	add r0, 8
	push r0
	ld r0, (bp+-8)
	mul r0, 2
	pop r1
	add r1, r0
	ld r0, (r1)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	pop r1
	st r0, (r1)
_L671858be_227:
	ld r0, _g_met
	push r0
	ld r0, (bp+-4)
	mul r0, 28
	pop r1
	add r1, r0
	push r1
	ld r0, (bp+-6)
	pop r1
	st r0, (r1+4)
	ld r0, (bp+-2)
	push r0
	ld r0, 4
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L671858be_230
	ld r0, 0
	jmp _L671858be_231
_L671858be_230:
	ld r0, 1
_L671858be_231:
	cmp r0, 0
	jmpc eq, _L671858be_229
	ld r0, (bp+6)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L671858be_232
	ld r0, 0
	jmp _L671858be_233
_L671858be_232:
	ld r0, 1
_L671858be_233:
	cmp r0, 0
	jmpc eq, _L671858be_229
	ld r0, 1
	jmp _L671858be_228
_L671858be_229:
	ld r0, 0
_L671858be_228:
	cmp r0, 0
	jmpc eq, _L671858be_234
	ld r0, _g_met
	push r0
	ld r0, (bp+-4)
	mul r0, 28
	pop r1
	add r1, r0
	push r1
	ld r0, 1
	pop r1
	st r0, (r1+26)
	ld r0, _g_met
	push r0
	ld r0, (bp+-4)
	mul r0, 28
	pop r1
	add r1, r0
	push r1
	ld r0, (bp+-6)
	pop r1
	st r0, (r1+24)
_L671858be_234:
	ld r0, (bp+-2)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L671858be_237
	ld r0, 0
	jmp _L671858be_238
_L671858be_237:
	ld r0, 1
_L671858be_238:
	cmp r0, 0
	jmpc eq, _L671858be_236
	ld r0, (bp+6)
	push r0
	ld r0, 2
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L671858be_239
	ld r0, 0
	jmp _L671858be_240
_L671858be_239:
	ld r0, 1
_L671858be_240:
	cmp r0, 0
	jmpc eq, _L671858be_236
	ld r0, 1
	jmp _L671858be_235
_L671858be_236:
	ld r0, 0
_L671858be_235:
	cmp r0, 0
	jmpc eq, _L671858be_241
	ld r0, _g_met
	push r0
	ld r0, (bp+-4)
	mul r0, 28
	pop r1
	add r1, r0
	ld r0, (r1+26)
	cmp r0, 0
	jmpc eq, _L671858be_242
	ld r0, _g_met
	push r0
	ld r0, (bp+-4)
	mul r0, 28
	pop r1
	add r1, r0
	push r1
	ld r0, _g_met
	push r0
	ld r0, (bp+-4)
	mul r0, 28
	pop r1
	add r1, r0
	ld r0, (r1+20)
	push r0
	ld r0, (bp+-6)
	push r0
	ld r0, _g_met
	push r0
	ld r0, (bp+-4)
	mul r0, 28
	pop r1
	add r1, r0
	ld r0, (r1+24)
	ld r1, r0
	pop r0
	sub r0, r1
	ld r1, r0
	pop r0
	add r0, r1
	pop r1
	st r0, (r1+20)
	ld r0, _g_met
	push r0
	ld r0, (bp+-4)
	mul r0, 28
	pop r1
	add r1, r0
	push r1
	ld r0, _g_met
	push r0
	ld r0, (bp+-4)
	mul r0, 28
	pop r1
	add r1, r0
	ld r0, (r1+22)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	pop r1
	st r0, (r1+22)
	ld r0, _g_met
	push r0
	ld r0, (bp+-4)
	mul r0, 28
	pop r1
	add r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1+26)
_L671858be_242:
_L671858be_241:
	ld r0, (bp+6)
	push r0
	ld r0, 3
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L671858be_243
	ld r0, 0
	jmp _L671858be_244
_L671858be_243:
	ld r0, 1
_L671858be_244:
	cmp r0, 0
	jmpc eq, _L671858be_245
	ld r0, _g_met
	push r0
	ld r0, (bp+-4)
	mul r0, 28
	pop r1
	add r1, r0
	push r1
	ld r0, (bp+-6)
	pop r1
	st r0, (r1+2)
_L671858be_245:
_L671858be_221:
	ld r0, (bp+-2)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L671858be_246
	ld r0, 0
	jmp _L671858be_247
_L671858be_246:
	ld r0, 1
_L671858be_247:
	cmp r0, 0
	jmpc eq, _L671858be_248
	ld r0, (bp+4)
	push r0
	call _f_fila_remove
	add sp, 2
_L671858be_248:
	ld r0, (bp+-2)
	push r0
	ld r0, 2
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L671858be_249
	ld r0, 0
	jmp _L671858be_250
_L671858be_249:
	ld r0, 1
_L671858be_250:
	cmp r0, 0
	jmpc eq, _L671858be_251
	ld r0, (bp+6)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L671858be_254
	ld r0, 0
	jmp _L671858be_255
_L671858be_254:
	ld r0, 1
_L671858be_255:
	cmp r0, 0
	jmpc ne, _L671858be_253
	ld r0, (bp+6)
	push r0
	ld r0, 4
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L671858be_256
	ld r0, 0
	jmp _L671858be_257
_L671858be_256:
	ld r0, 1
_L671858be_257:
	cmp r0, 0
	jmpc ne, _L671858be_253
	ld r0, 0
	jmp _L671858be_252
_L671858be_253:
	ld r0, 1
_L671858be_252:
	cmp r0, 0
	jmpc eq, _L671858be_258
	ld r0, 3
	push r0
	ld r0, (_g_quantum_restante)
	ld r1, r0
	pop r0
	sub r0, r1
	st r0, (bp+-10)
	ld r0, (bp+-10)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L671858be_259
	ld r0, 0
	jmp _L671858be_260
_L671858be_259:
	ld r0, 1
_L671858be_260:
	cmp r0, 0
	jmpc eq, _L671858be_261
	ld r0, 0
	st r0, (bp+-10)
_L671858be_261:
	ld r0, (bp+-10)
	push r0
	ld r0, 3
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc gt, _L671858be_262
	ld r0, 0
	jmp _L671858be_263
_L671858be_262:
	ld r0, 1
_L671858be_263:
	cmp r0, 0
	jmpc eq, _L671858be_264
	ld r0, 3
	st r0, (bp+-10)
_L671858be_264:
	ld r0, _g_tabela_processos
	push r0
	ld r0, (bp+4)
	mul r0, 170
	pop r1
	add r1, r0
	push r1
	ld r0, _g_tabela_processos
	push r0
	ld r0, (bp+4)
	mul r0, 170
	pop r1
	add r1, r0
	ld r0, (r1+8)
	push r0
	ld r0, 1000
	push r0
	ld r0, (bp+-10)
	ld r1, r0
	pop r0
	mul r0, r1
	push r0
	ld r0, 3
	ld r1, r0
	pop r0
	div r0, r1
	ld r1, r0
	pop r0
	add r0, r1
	push r0
	ld r0, 2
	ld r1, r0
	pop r0
	div r0, r1
	pop r1
	st r0, (r1+8)
_L671858be_258:
_L671858be_251:
	ld r0, _g_tabela_processos
	push r0
	ld r0, (bp+4)
	mul r0, 170
	pop r1
	add r1, r0
	push r1
	ld r0, (bp+6)
	pop r1
	st r0, (r1+2)
	ld r0, (bp+6)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L671858be_265
	ld r0, 0
	jmp _L671858be_266
_L671858be_265:
	ld r0, 1
_L671858be_266:
	cmp r0, 0
	jmpc eq, _L671858be_267
	ld r0, (bp+4)
	push r0
	call _f_fila_entra
	add sp, 2
_L671858be_267:
	ld sp, bp
	pop bp
	ret
_f_escolhe_proximo:
	push bp
	ld bp, sp
	sub sp, 6
	ld r0, (_g_fila_n)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L671858be_279
	ld r0, 0
	jmp _L671858be_280
_L671858be_279:
	ld r0, 1
_L671858be_280:
	cmp r0, 0
	jmpc eq, _L671858be_281
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld sp, bp
	pop bp
	ret
_L671858be_281:
	ld r0, _g_fila
	push r0
	ld r0, 0
	mul r0, 2
	pop r1
	add r1, r0
	ld r0, (r1)
	st r0, (bp+-4)
	ld r0, 1
	st r0, (bp+-2)
_L671858be_282:
	ld r0, (bp+-2)
	push r0
	ld r0, (_g_fila_n)
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L671858be_285
	ld r0, 0
	jmp _L671858be_286
_L671858be_285:
	ld r0, 1
_L671858be_286:
	cmp r0, 0
	jmpc eq, _L671858be_284
	ld r0, _g_fila
	push r0
	ld r0, (bp+-2)
	mul r0, 2
	pop r1
	add r1, r0
	ld r0, (r1)
	st r0, (bp+-6)
	ld r0, _g_tabela_processos
	push r0
	ld r0, (bp+-6)
	mul r0, 170
	pop r1
	add r1, r0
	ld r0, (r1+8)
	push r0
	ld r0, _g_tabela_processos
	push r0
	ld r0, (bp+-4)
	mul r0, 170
	pop r1
	add r1, r0
	ld r0, (r1+8)
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L671858be_287
	ld r0, 0
	jmp _L671858be_288
_L671858be_287:
	ld r0, 1
_L671858be_288:
	cmp r0, 0
	jmpc eq, _L671858be_289
	ld r0, (bp+-6)
	st r0, (bp+-4)
_L671858be_289:
_L671858be_283:
	ld r0, (bp+-2)
	push r0
	add r0, 1
	st r0, (bp+-2)
	pop r0
	jmp _L671858be_282
_L671858be_284:
	ld r0, (bp+-4)
	ld sp, bp
	pop bp
	ret
	ld sp, bp
	pop bp
	ret
_f_so_escalona:
	push bp
	ld bp, sp
	sub sp, 4
	ld r0, (_g_processo_atual)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc ge, _L671858be_300
	ld r0, 0
	jmp _L671858be_301
_L671858be_300:
	ld r0, 1
_L671858be_301:
	cmp r0, 0
	jmpc eq, _L671858be_302
	ld r0, _g_tabela_processos
	push r0
	ld r0, (_g_processo_atual)
	mul r0, 170
	pop r1
	add r1, r0
	ld r0, (r1+2)
	push r0
	ld r0, 2
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L671858be_303
	ld r0, 0
	jmp _L671858be_304
_L671858be_303:
	ld r0, 1
_L671858be_304:
	cmp r0, 0
	jmpc eq, _L671858be_305
	ld sp, bp
	pop bp
	ret
_L671858be_305:
_L671858be_302:
	call _f_escolhe_proximo
	st r0, (bp+-2)
	ld r0, (bp+-2)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L671858be_306
	ld r0, 0
	jmp _L671858be_307
_L671858be_306:
	ld r0, 1
_L671858be_307:
	cmp r0, 0
	jmpc eq, _L671858be_308
	ld r0, 1
	xor r0, -1
	add r0, 1
	st r0, (_g_processo_atual)
	ld sp, bp
	pop bp
	ret
_L671858be_308:
	call _f_so_tiques
	st r0, (bp+-4)
	ld r0, (_g_em_ocioso)
	cmp r0, 0
	jmpc eq, _L671858be_309
	ld r0, (_g_tempo_ocioso)
	push r0
	ld r0, (bp+-4)
	push r0
	ld r0, (_g_ocioso_desde)
	ld r1, r0
	pop r0
	sub r0, r1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (_g_tempo_ocioso)
	ld r0, 0
	st r0, (_g_em_ocioso)
_L671858be_309:
	ld r0, (bp+-2)
	st r0, (_g_processo_atual)
	ld r0, 2
	push r0
	ld r0, (bp+-2)
	push r0
	call _f_muda_estado
	add sp, 4
	ld r0, 3
	st r0, (_g_quantum_restante)
	ld sp, bp
	pop bp
	ret
_f_carrega_ocioso:
	push bp
	ld bp, sp
	sub sp, 4
	ld r0, 0
	st r0, (bp+-2)
_L671858be_315:
	ld r0, (bp+-2)
	push r0
	ld r0, 16
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L671858be_318
	ld r0, 0
	jmp _L671858be_319
_L671858be_318:
	ld r0, 1
_L671858be_319:
	cmp r0, 0
	jmpc eq, _L671858be_317
	ld r0, (bp+4)
	push r0
	ld r0, (bp+-2)
	mul r0, 2
	pop r1
	add r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1)
_L671858be_316:
	ld r0, (bp+-2)
	push r0
	add r0, 1
	st r0, (bp+-2)
	pop r0
	jmp _L671858be_315
_L671858be_317:
	ld r0, _f_ociosa
	st r0, (bp+-4)
	ld r0, (bp+4)
	push r0
	ld r0, 6
	mul r0, 2
	pop r1
	add r1, r0
	push r1
	ld r0, _g_pilha_ociosa
	push r0
	ld r0, 3
	mul r0, 2
	pop r1
	add r1, r0
	ld r0, r1
	pop r1
	st r0, (r1)
	ld r0, (bp+4)
	push r0
	ld r0, 7
	mul r0, 2
	pop r1
	add r1, r0
	push r1
	ld r0, (bp+-4)
	pop r1
	st r0, (r1)
	ld r0, (bp+4)
	push r0
	ld r0, 8
	mul r0, 2
	pop r1
	add r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1)
	ld sp, bp
	pop bp
	ret
_f_so_retoma:
	push bp
	ld bp, sp
	call _f_so_escalona
	ld r0, (_g_processo_atual)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L671858be_329
	ld r0, 0
	jmp _L671858be_330
_L671858be_329:
	ld r0, 1
_L671858be_330:
	cmp r0, 0
	jmpc eq, _L671858be_331
	call _f_ha_bloqueado_es
	cmp r0, 0
	jmpc eq, _L671858be_332
	ld r0, (_g_em_ocioso)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L671858be_333
	ld r0, 0
	jmp _L671858be_334
_L671858be_333:
	ld r0, 1
_L671858be_334:
	cmp r0, 0
	jmpc eq, _L671858be_335
	ld r0, 1
	st r0, (_g_em_ocioso)
	call _f_so_tiques
	st r0, (_g_ocioso_desde)
_L671858be_335:
	ld r0, (bp+4)
	push r0
	call _f_carrega_ocioso
	add sp, 2
	ld sp, bp
	pop bp
	ret
_L671858be_332:
	call _f_ha_bloqueado
	cmp r0, 0
	jmpc eq, _L671858be_336
	ld r0, _str671858be_38
	push r0
	call _f_encerra_sistema
	add sp, 2
	jmp _L671858be_337
_L671858be_336:
	ld r0, _str671858be_39
	push r0
	call _f_encerra_sistema
	add sp, 2
_L671858be_337:
	ld sp, bp
	pop bp
	ret
_L671858be_331:
	ld r0, (bp+4)
	push r0
	call _f_so_recupera_quadro
	add sp, 2
	ld sp, bp
	pop bp
	ret
_f_log_pid:
	push bp
	ld bp, sp
	ld r0, 10
	push r0
	call _f_console_escreve
	add sp, 2
	ld r0, _str671858be_41
	push r0
	call _f_console_imprime
	add sp, 2
	ld r0, (bp+4)
	push r0
	call _f_console_imprime
	add sp, 2
	ld r0, (bp+6)
	push r0
	call _f_console_imprime_int
	add sp, 2
	ld r0, 10
	push r0
	call _f_console_escreve
	add sp, 2
	ld sp, bp
	pop bp
	ret
_f_encerra_sistema:
	push bp
	ld bp, sp
	ld r0, 10
	push r0
	call _f_console_escreve
	add sp, 2
	ld r0, _str671858be_43
	push r0
	call _f_console_imprime
	add sp, 2
	ld r0, (bp+4)
	push r0
	call _f_console_imprime
	add sp, 2
	ld r0, 10
	push r0
	call _f_console_escreve
	add sp, 2
	call _f_met_fecha_tempos
	call _f_relatorio_final
	call _f_para_sistema
	ld sp, bp
	pop bp
	ret
_f_busca_indice_pid:
	push bp
	ld bp, sp
	sub sp, 2
	ld r0, 0
	st r0, (bp+-2)
_L671858be_355:
	ld r0, (bp+-2)
	push r0
	ld r0, 16
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L671858be_358
	ld r0, 0
	jmp _L671858be_359
_L671858be_358:
	ld r0, 1
_L671858be_359:
	cmp r0, 0
	jmpc eq, _L671858be_357
	ld r0, _g_tabela_processos
	push r0
	ld r0, (bp+-2)
	mul r0, 170
	pop r1
	add r1, r0
	ld r0, (r1)
	push r0
	ld r0, (bp+4)
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L671858be_360
	ld r0, 0
	jmp _L671858be_361
_L671858be_360:
	ld r0, 1
_L671858be_361:
	cmp r0, 0
	jmpc eq, _L671858be_362
	ld r0, _g_tabela_processos
	push r0
	ld r0, (bp+-2)
	mul r0, 170
	pop r1
	add r1, r0
	ld r0, (r1+2)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L671858be_363
	ld r0, 0
	jmp _L671858be_364
_L671858be_363:
	ld r0, 1
_L671858be_364:
	cmp r0, 0
	jmpc eq, _L671858be_365
	ld r0, (bp+-2)
	ld sp, bp
	pop bp
	ret
_L671858be_365:
	ld r0, _g_tabela_processos
	push r0
	ld r0, (bp+-2)
	mul r0, 170
	pop r1
	add r1, r0
	ld r0, (r1+2)
	push r0
	ld r0, 2
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L671858be_366
	ld r0, 0
	jmp _L671858be_367
_L671858be_366:
	ld r0, 1
_L671858be_367:
	cmp r0, 0
	jmpc eq, _L671858be_368
	ld r0, (bp+-2)
	ld sp, bp
	pop bp
	ret
_L671858be_368:
	ld r0, _g_tabela_processos
	push r0
	ld r0, (bp+-2)
	mul r0, 170
	pop r1
	add r1, r0
	ld r0, (r1+2)
	push r0
	ld r0, 4
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L671858be_369
	ld r0, 0
	jmp _L671858be_370
_L671858be_369:
	ld r0, 1
_L671858be_370:
	cmp r0, 0
	jmpc eq, _L671858be_371
	ld r0, (bp+-2)
	ld sp, bp
	pop bp
	ret
_L671858be_371:
_L671858be_362:
_L671858be_356:
	ld r0, (bp+-2)
	push r0
	add r0, 1
	st r0, (bp+-2)
	pop r0
	jmp _L671858be_355
_L671858be_357:
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld sp, bp
	pop bp
	ret
	ld sp, bp
	pop bp
	ret
_f_aloca_processo:
	push bp
	ld bp, sp
	sub sp, 8
	ld r0, (_g_proximo_pid)
	push r0
	ld r0, 32
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc ge, _L671858be_392
	ld r0, 0
	jmp _L671858be_393
_L671858be_392:
	ld r0, 1
_L671858be_393:
	cmp r0, 0
	jmpc eq, _L671858be_394
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld sp, bp
	pop bp
	ret
_L671858be_394:
	ld r0, _f_so_encerra
	st r0, (bp+-8)
	ld r0, 0
	st r0, (bp+-2)
_L671858be_395:
	ld r0, (bp+-2)
	push r0
	ld r0, 16
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L671858be_398
	ld r0, 0
	jmp _L671858be_399
_L671858be_398:
	ld r0, 1
_L671858be_399:
	cmp r0, 0
	jmpc eq, _L671858be_397
	ld r0, _g_tabela_processos
	push r0
	ld r0, (bp+-2)
	mul r0, 170
	pop r1
	add r1, r0
	ld r0, (r1+2)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L671858be_402
	ld r0, 0
	jmp _L671858be_403
_L671858be_402:
	ld r0, 1
_L671858be_403:
	cmp r0, 0
	jmpc ne, _L671858be_401
	ld r0, _g_tabela_processos
	push r0
	ld r0, (bp+-2)
	mul r0, 170
	pop r1
	add r1, r0
	ld r0, (r1+2)
	push r0
	ld r0, 3
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L671858be_404
	ld r0, 0
	jmp _L671858be_405
_L671858be_404:
	ld r0, 1
_L671858be_405:
	cmp r0, 0
	jmpc ne, _L671858be_401
	ld r0, 0
	jmp _L671858be_400
_L671858be_401:
	ld r0, 1
_L671858be_400:
	cmp r0, 0
	jmpc eq, _L671858be_406
	ld r0, (_g_proximo_pid)
	st r0, (bp+-6)
	ld r0, (_g_proximo_pid)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (_g_proximo_pid)
	ld r0, _g_tabela_processos
	push r0
	ld r0, (bp+-2)
	mul r0, 170
	pop r1
	add r1, r0
	push r1
	ld r0, (bp+-6)
	pop r1
	st r0, (r1)
	ld r0, _g_tabela_processos
	push r0
	ld r0, (bp+-2)
	mul r0, 170
	pop r1
	add r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1+4)
	ld r0, _g_tabela_processos
	push r0
	ld r0, (bp+-2)
	mul r0, 170
	pop r1
	add r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1+6)
	ld r0, _g_tabela_processos
	push r0
	ld r0, (bp+-2)
	mul r0, 170
	pop r1
	add r1, r0
	push r1
	ld r0, 500
	pop r1
	st r0, (r1+8)
	ld r0, 0
	st r0, (bp+-4)
_L671858be_407:
	ld r0, (bp+-4)
	push r0
	ld r0, 16
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L671858be_410
	ld r0, 0
	jmp _L671858be_411
_L671858be_410:
	ld r0, 1
_L671858be_411:
	cmp r0, 0
	jmpc eq, _L671858be_409
	ld r0, _g_tabela_processos
	push r0
	ld r0, (bp+-2)
	mul r0, 170
	pop r1
	add r1, r0
	ld r0, r1
	add r0, 10
	push r0
	ld r0, (bp+-4)
	mul r0, 2
	pop r1
	add r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1)
_L671858be_408:
	ld r0, (bp+-4)
	push r0
	add r0, 1
	st r0, (bp+-4)
	pop r0
	jmp _L671858be_407
_L671858be_409:
	ld r0, _g_tabela_processos
	push r0
	ld r0, (bp+-2)
	mul r0, 170
	pop r1
	add r1, r0
	ld r0, r1
	add r0, 42
	push r0
	ld r0, 64
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	sub r0, r1
	mul r0, 2
	pop r1
	add r1, r0
	push r1
	ld r0, (bp+-8)
	pop r1
	st r0, (r1)
	ld r0, _g_tabela_processos
	push r0
	ld r0, (bp+-2)
	mul r0, 170
	pop r1
	add r1, r0
	ld r0, r1
	add r0, 10
	push r0
	ld r0, 6
	mul r0, 2
	pop r1
	add r1, r0
	push r1
	ld r0, _g_tabela_processos
	push r0
	ld r0, (bp+-2)
	mul r0, 170
	pop r1
	add r1, r0
	ld r0, r1
	add r0, 42
	push r0
	ld r0, 64
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	sub r0, r1
	mul r0, 2
	pop r1
	add r1, r0
	ld r0, r1
	pop r1
	st r0, (r1)
	ld r0, _g_tabela_processos
	push r0
	ld r0, (bp+-2)
	mul r0, 170
	pop r1
	add r1, r0
	ld r0, r1
	add r0, 10
	push r0
	ld r0, 7
	mul r0, 2
	pop r1
	add r1, r0
	push r1
	ld r0, (bp+4)
	pop r1
	st r0, (r1)
	ld r0, _g_tabela_processos
	push r0
	ld r0, (bp+-2)
	mul r0, 170
	pop r1
	add r1, r0
	ld r0, r1
	add r0, 10
	push r0
	ld r0, 8
	mul r0, 2
	pop r1
	add r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1)
	ld r0, (bp+-6)
	push r0
	call _f_met_cria
	add sp, 2
	ld r0, 1
	push r0
	ld r0, (bp+-2)
	push r0
	call _f_muda_estado
	add sp, 4
	ld r0, (bp+-2)
	ld sp, bp
	pop bp
	ret
_L671858be_406:
_L671858be_396:
	ld r0, (bp+-2)
	push r0
	add r0, 1
	st r0, (bp+-2)
	pop r0
	jmp _L671858be_395
_L671858be_397:
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld sp, bp
	pop bp
	ret
	ld sp, bp
	pop bp
	ret
_f_so_salva_quadro:
	push bp
	ld bp, sp
	sub sp, 2
	ld r0, (_g_processo_atual)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L671858be_420
	ld r0, 0
	jmp _L671858be_421
_L671858be_420:
	ld r0, 1
_L671858be_421:
	cmp r0, 0
	jmpc eq, _L671858be_422
	ld sp, bp
	pop bp
	ret
_L671858be_422:
	ld r0, 0
	st r0, (bp+-2)
_L671858be_423:
	ld r0, (bp+-2)
	push r0
	ld r0, 16
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L671858be_426
	ld r0, 0
	jmp _L671858be_427
_L671858be_426:
	ld r0, 1
_L671858be_427:
	cmp r0, 0
	jmpc eq, _L671858be_425
	ld r0, _g_tabela_processos
	push r0
	ld r0, (_g_processo_atual)
	mul r0, 170
	pop r1
	add r1, r0
	ld r0, r1
	add r0, 10
	push r0
	ld r0, (bp+-2)
	mul r0, 2
	pop r1
	add r1, r0
	push r1
	ld r0, (bp+4)
	push r0
	ld r0, (bp+-2)
	mul r0, 2
	pop r1
	add r1, r0
	ld r0, (r1)
	pop r1
	st r0, (r1)
_L671858be_424:
	ld r0, (bp+-2)
	push r0
	add r0, 1
	st r0, (bp+-2)
	pop r0
	jmp _L671858be_423
_L671858be_425:
	ld sp, bp
	pop bp
	ret
_f_so_recupera_quadro:
	push bp
	ld bp, sp
	sub sp, 2
	ld r0, (_g_processo_atual)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L671858be_436
	ld r0, 0
	jmp _L671858be_437
_L671858be_436:
	ld r0, 1
_L671858be_437:
	cmp r0, 0
	jmpc eq, _L671858be_438
	ld sp, bp
	pop bp
	ret
_L671858be_438:
	ld r0, 0
	st r0, (bp+-2)
_L671858be_439:
	ld r0, (bp+-2)
	push r0
	ld r0, 16
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L671858be_442
	ld r0, 0
	jmp _L671858be_443
_L671858be_442:
	ld r0, 1
_L671858be_443:
	cmp r0, 0
	jmpc eq, _L671858be_441
	ld r0, (bp+4)
	push r0
	ld r0, (bp+-2)
	mul r0, 2
	pop r1
	add r1, r0
	push r1
	ld r0, _g_tabela_processos
	push r0
	ld r0, (_g_processo_atual)
	mul r0, 170
	pop r1
	add r1, r0
	ld r0, r1
	add r0, 10
	push r0
	ld r0, (bp+-2)
	mul r0, 2
	pop r1
	add r1, r0
	ld r0, (r1)
	pop r1
	st r0, (r1)
_L671858be_440:
	ld r0, (bp+-2)
	push r0
	add r0, 1
	st r0, (bp+-2)
	pop r0
	jmp _L671858be_439
_L671858be_441:
	ld sp, bp
	pop bp
	ret
_f_so_bloqueia:
	push bp
	ld bp, sp
	ld r0, 4
	push r0
	ld r0, (_g_processo_atual)
	push r0
	call _f_muda_estado
	add sp, 4
	ld r0, _g_tabela_processos
	push r0
	ld r0, (_g_processo_atual)
	mul r0, 170
	pop r1
	add r1, r0
	push r1
	ld r0, (bp+4)
	pop r1
	st r0, (r1+4)
	ld r0, _g_tabela_processos
	push r0
	ld r0, (_g_processo_atual)
	mul r0, 170
	pop r1
	add r1, r0
	push r1
	ld r0, (bp+6)
	pop r1
	st r0, (r1+6)
	ld sp, bp
	pop bp
	ret
_f_so_desbloqueia:
	push bp
	ld bp, sp
	ld r0, _g_tabela_processos
	push r0
	ld r0, (bp+4)
	mul r0, 170
	pop r1
	add r1, r0
	ld r0, r1
	add r0, 10
	push r0
	ld r0, 0
	mul r0, 2
	pop r1
	add r1, r0
	push r1
	ld r0, (bp+6)
	pop r1
	st r0, (r1)
	ld r0, _g_tabela_processos
	push r0
	ld r0, (bp+4)
	mul r0, 170
	pop r1
	add r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1+4)
	ld r0, 1
	push r0
	ld r0, (bp+4)
	push r0
	call _f_muda_estado
	add sp, 4
	ld sp, bp
	pop bp
	ret
_f_ha_bloqueado:
	push bp
	ld bp, sp
	sub sp, 2
	ld r0, 0
	st r0, (bp+-2)
_L671858be_452:
	ld r0, (bp+-2)
	push r0
	ld r0, 16
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L671858be_455
	ld r0, 0
	jmp _L671858be_456
_L671858be_455:
	ld r0, 1
_L671858be_456:
	cmp r0, 0
	jmpc eq, _L671858be_454
	ld r0, _g_tabela_processos
	push r0
	ld r0, (bp+-2)
	mul r0, 170
	pop r1
	add r1, r0
	ld r0, (r1+2)
	push r0
	ld r0, 4
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L671858be_457
	ld r0, 0
	jmp _L671858be_458
_L671858be_457:
	ld r0, 1
_L671858be_458:
	cmp r0, 0
	jmpc eq, _L671858be_459
	ld r0, 1
	ld sp, bp
	pop bp
	ret
_L671858be_459:
_L671858be_453:
	ld r0, (bp+-2)
	push r0
	add r0, 1
	st r0, (bp+-2)
	pop r0
	jmp _L671858be_452
_L671858be_454:
	ld r0, 0
	ld sp, bp
	pop bp
	ret
	ld sp, bp
	pop bp
	ret
_f_ha_bloqueado_es:
	push bp
	ld bp, sp
	sub sp, 2
	ld r0, 0
	st r0, (bp+-2)
_L671858be_474:
	ld r0, (bp+-2)
	push r0
	ld r0, 16
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L671858be_477
	ld r0, 0
	jmp _L671858be_478
_L671858be_477:
	ld r0, 1
_L671858be_478:
	cmp r0, 0
	jmpc eq, _L671858be_476
	ld r0, _g_tabela_processos
	push r0
	ld r0, (bp+-2)
	mul r0, 170
	pop r1
	add r1, r0
	ld r0, (r1+2)
	push r0
	ld r0, 4
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L671858be_479
	ld r0, 0
	jmp _L671858be_480
_L671858be_479:
	ld r0, 1
_L671858be_480:
	cmp r0, 0
	jmpc eq, _L671858be_481
	ld r0, _g_tabela_processos
	push r0
	ld r0, (bp+-2)
	mul r0, 170
	pop r1
	add r1, r0
	ld r0, (r1+4)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L671858be_482
	ld r0, 0
	jmp _L671858be_483
_L671858be_482:
	ld r0, 1
_L671858be_483:
	cmp r0, 0
	jmpc eq, _L671858be_484
	ld r0, 1
	ld sp, bp
	pop bp
	ret
_L671858be_484:
	ld r0, _g_tabela_processos
	push r0
	ld r0, (bp+-2)
	mul r0, 170
	pop r1
	add r1, r0
	ld r0, (r1+4)
	push r0
	ld r0, 2
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L671858be_485
	ld r0, 0
	jmp _L671858be_486
_L671858be_485:
	ld r0, 1
_L671858be_486:
	cmp r0, 0
	jmpc eq, _L671858be_487
	ld r0, 1
	ld sp, bp
	pop bp
	ret
_L671858be_487:
_L671858be_481:
_L671858be_475:
	ld r0, (bp+-2)
	push r0
	add r0, 1
	st r0, (bp+-2)
	pop r0
	jmp _L671858be_474
_L671858be_476:
	ld r0, 0
	ld sp, bp
	pop bp
	ret
	ld sp, bp
	pop bp
	ret
_f_trata_pendencias:
	push bp
	ld bp, sp
	sub sp, 2
	ld r0, 0
	st r0, (bp+-2)
_L671858be_505:
	ld r0, (bp+-2)
	push r0
	ld r0, 16
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L671858be_508
	ld r0, 0
	jmp _L671858be_509
_L671858be_508:
	ld r0, 1
_L671858be_509:
	cmp r0, 0
	jmpc eq, _L671858be_507
	ld r0, _g_tabela_processos
	push r0
	ld r0, (bp+-2)
	mul r0, 170
	pop r1
	add r1, r0
	ld r0, (r1+2)
	push r0
	ld r0, 4
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L671858be_510
	ld r0, 0
	jmp _L671858be_511
_L671858be_510:
	ld r0, 1
_L671858be_511:
	cmp r0, 0
	jmpc eq, _L671858be_512
	ld r0, _g_tabela_processos
	push r0
	ld r0, (bp+-2)
	mul r0, 170
	pop r1
	add r1, r0
	ld r0, (r1+4)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L671858be_513
	ld r0, 0
	jmp _L671858be_514
_L671858be_513:
	ld r0, 1
_L671858be_514:
	cmp r0, 0
	jmpc eq, _L671858be_515
	call _f_console_pronto_leitura
	cmp r0, 0
	jmpc eq, _L671858be_516
	call _f_console_le_caractere
	push r0
	ld r0, (bp+-2)
	push r0
	call _f_so_desbloqueia
	add sp, 4
_L671858be_516:
	jmp _L671858be_517
_L671858be_515:
	ld r0, _g_tabela_processos
	push r0
	ld r0, (bp+-2)
	mul r0, 170
	pop r1
	add r1, r0
	ld r0, (r1+4)
	push r0
	ld r0, 2
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L671858be_518
	ld r0, 0
	jmp _L671858be_519
_L671858be_518:
	ld r0, 1
_L671858be_519:
	cmp r0, 0
	jmpc eq, _L671858be_520
	call _f_console_pronto_escrita
	cmp r0, 0
	jmpc eq, _L671858be_521
	ld r0, _g_tabela_processos
	push r0
	ld r0, (bp+-2)
	mul r0, 170
	pop r1
	add r1, r0
	ld r0, (r1+6)
	push r0
	call _f_console_escreve
	add sp, 2
	ld r0, 0
	push r0
	ld r0, (bp+-2)
	push r0
	call _f_so_desbloqueia
	add sp, 4
_L671858be_521:
_L671858be_520:
_L671858be_517:
_L671858be_512:
_L671858be_506:
	ld r0, (bp+-2)
	push r0
	add r0, 1
	st r0, (bp+-2)
	pop r0
	jmp _L671858be_505
_L671858be_507:
	ld sp, bp
	pop bp
	ret
_f_so_cria:
	push bp
	ld bp, sp
	sub sp, 2
	ld r0, (bp+4)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L671858be_528
	ld r0, 0
	jmp _L671858be_529
_L671858be_528:
	ld r0, 1
_L671858be_529:
	cmp r0, 0
	jmpc eq, _L671858be_530
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld sp, bp
	pop bp
	ret
_L671858be_530:
	ld r0, (bp+4)
	push r0
	call _f_aloca_processo
	add sp, 2
	st r0, (bp+-2)
	ld r0, (bp+-2)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L671858be_531
	ld r0, 0
	jmp _L671858be_532
_L671858be_531:
	ld r0, 1
_L671858be_532:
	cmp r0, 0
	jmpc eq, _L671858be_533
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld sp, bp
	pop bp
	ret
_L671858be_533:
	ld r0, _g_tabela_processos
	push r0
	ld r0, (bp+-2)
	mul r0, 170
	pop r1
	add r1, r0
	ld r0, (r1)
	push r0
	ld r0, _str671858be_45
	push r0
	call _f_log_pid
	add sp, 4
	ld r0, _g_tabela_processos
	push r0
	ld r0, (bp+-2)
	mul r0, 170
	pop r1
	add r1, r0
	ld r0, (r1)
	ld sp, bp
	pop bp
	ret
	ld sp, bp
	pop bp
	ret
_f_acorda_esperando:
	push bp
	ld bp, sp
	sub sp, 2
	ld r0, 0
	st r0, (bp+-2)
_L671858be_548:
	ld r0, (bp+-2)
	push r0
	ld r0, 16
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L671858be_551
	ld r0, 0
	jmp _L671858be_552
_L671858be_551:
	ld r0, 1
_L671858be_552:
	cmp r0, 0
	jmpc eq, _L671858be_550
	ld r0, _g_tabela_processos
	push r0
	ld r0, (bp+-2)
	mul r0, 170
	pop r1
	add r1, r0
	ld r0, (r1+2)
	push r0
	ld r0, 4
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L671858be_553
	ld r0, 0
	jmp _L671858be_554
_L671858be_553:
	ld r0, 1
_L671858be_554:
	cmp r0, 0
	jmpc eq, _L671858be_555
	ld r0, _g_tabela_processos
	push r0
	ld r0, (bp+-2)
	mul r0, 170
	pop r1
	add r1, r0
	ld r0, (r1+4)
	push r0
	ld r0, 3
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L671858be_556
	ld r0, 0
	jmp _L671858be_557
_L671858be_556:
	ld r0, 1
_L671858be_557:
	cmp r0, 0
	jmpc eq, _L671858be_558
	ld r0, _g_tabela_processos
	push r0
	ld r0, (bp+-2)
	mul r0, 170
	pop r1
	add r1, r0
	ld r0, (r1+6)
	push r0
	ld r0, (bp+4)
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L671858be_559
	ld r0, 0
	jmp _L671858be_560
_L671858be_559:
	ld r0, 1
_L671858be_560:
	cmp r0, 0
	jmpc eq, _L671858be_561
	ld r0, 0
	push r0
	ld r0, (bp+-2)
	push r0
	call _f_so_desbloqueia
	add sp, 4
_L671858be_561:
_L671858be_558:
_L671858be_555:
_L671858be_549:
	ld r0, (bp+-2)
	push r0
	add r0, 1
	st r0, (bp+-2)
	pop r0
	jmp _L671858be_548
_L671858be_550:
	ld sp, bp
	pop bp
	ret
_f_so_mata:
	push bp
	ld bp, sp
	sub sp, 4
	ld r0, (bp+4)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L671858be_572
	ld r0, 0
	jmp _L671858be_573
_L671858be_572:
	ld r0, 1
_L671858be_573:
	cmp r0, 0
	jmpc eq, _L671858be_574
	ld r0, (_g_processo_atual)
	st r0, (bp+-2)
	jmp _L671858be_575
_L671858be_574:
	ld r0, (bp+4)
	push r0
	call _f_busca_indice_pid
	add sp, 2
	st r0, (bp+-2)
_L671858be_575:
	ld r0, (bp+-2)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L671858be_576
	ld r0, 0
	jmp _L671858be_577
_L671858be_576:
	ld r0, 1
_L671858be_577:
	cmp r0, 0
	jmpc eq, _L671858be_578
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld sp, bp
	pop bp
	ret
_L671858be_578:
	ld r0, _g_tabela_processos
	push r0
	ld r0, (bp+-2)
	mul r0, 170
	pop r1
	add r1, r0
	ld r0, (r1)
	st r0, (bp+-4)
	ld r0, _g_tabela_processos
	push r0
	ld r0, (bp+-2)
	mul r0, 170
	pop r1
	add r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1+4)
	ld r0, 3
	push r0
	ld r0, (bp+-2)
	push r0
	call _f_muda_estado
	add sp, 4
	ld r0, (bp+-4)
	push r0
	ld r0, _str671858be_48
	push r0
	call _f_log_pid
	add sp, 4
	ld r0, (bp+-4)
	push r0
	call _f_acorda_esperando
	add sp, 2
	ld r0, (bp+-4)
	push r0
	ld r0, (_g_pid_init)
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L671858be_579
	ld r0, 0
	jmp _L671858be_580
_L671858be_579:
	ld r0, 1
_L671858be_580:
	cmp r0, 0
	jmpc eq, _L671858be_581
	ld r0, _str671858be_49
	push r0
	call _f_encerra_sistema
	add sp, 2
_L671858be_581:
	ld r0, 0
	ld sp, bp
	pop bp
	ret
	ld sp, bp
	pop bp
	ret
_f_so_espera:
	push bp
	ld bp, sp
	ld r0, (bp+4)
	push r0
	ld r0, _g_tabela_processos
	push r0
	ld r0, (_g_processo_atual)
	mul r0, 170
	pop r1
	add r1, r0
	ld r0, (r1)
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L671858be_588
	ld r0, 0
	jmp _L671858be_589
_L671858be_588:
	ld r0, 1
_L671858be_589:
	cmp r0, 0
	jmpc eq, _L671858be_590
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld sp, bp
	pop bp
	ret
_L671858be_590:
	ld r0, (bp+4)
	push r0
	call _f_busca_indice_pid
	add sp, 2
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L671858be_591
	ld r0, 0
	jmp _L671858be_592
_L671858be_591:
	ld r0, 1
_L671858be_592:
	cmp r0, 0
	jmpc eq, _L671858be_593
	ld r0, 1
	xor r0, -1
	add r0, 1
	ld sp, bp
	pop bp
	ret
_L671858be_593:
	ld r0, (bp+4)
	push r0
	ld r0, 3
	push r0
	call _f_so_bloqueia
	add sp, 4
	ld r0, 1
	ld sp, bp
	pop bp
	ret
	ld sp, bp
	pop bp
	ret
_f_so_chamada:
	push bp
	ld bp, sp
	sub sp, 2
	ld r0, 1
	xor r0, -1
	add r0, 1
	st r0, (bp+-2)
	ld r0, _g_cont_int
	push r0
	ld r0, 7
	mul r0, 2
	pop r1
	add r1, r0
	push r1
	ld r0, _g_cont_int
	push r0
	ld r0, 7
	mul r0, 2
	pop r1
	add r1, r0
	ld r0, (r1)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	pop r1
	st r0, (r1)
	ld r0, (bp+12)
	push r0
	call _f_so_salva_quadro
	add sp, 2
	ld r0, (bp+4)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L671858be_623
	ld r0, 0
	jmp _L671858be_624
_L671858be_623:
	ld r0, 1
_L671858be_624:
	cmp r0, 0
	jmpc eq, _L671858be_625
	call _f_console_pronto_leitura
	cmp r0, 0
	jmpc eq, _L671858be_626
	call _f_console_le_caractere
	st r0, (bp+-2)
	jmp _L671858be_627
_L671858be_626:
	ld r0, 0
	push r0
	ld r0, 1
	push r0
	call _f_so_bloqueia
	add sp, 4
_L671858be_627:
	jmp _L671858be_628
_L671858be_625:
	ld r0, (bp+4)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L671858be_629
	ld r0, 0
	jmp _L671858be_630
_L671858be_629:
	ld r0, 1
_L671858be_630:
	cmp r0, 0
	jmpc eq, _L671858be_631
	call _f_console_pronto_escrita
	cmp r0, 0
	jmpc eq, _L671858be_632
	ld r0, (bp+6)
	push r0
	call _f_console_escreve
	add sp, 2
	ld r0, 0
	st r0, (bp+-2)
	jmp _L671858be_633
_L671858be_632:
	ld r0, (bp+6)
	push r0
	ld r0, 2
	push r0
	call _f_so_bloqueia
	add sp, 4
_L671858be_633:
	jmp _L671858be_634
_L671858be_631:
	ld r0, (bp+4)
	push r0
	ld r0, 2
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L671858be_635
	ld r0, 0
	jmp _L671858be_636
_L671858be_635:
	ld r0, 1
_L671858be_636:
	cmp r0, 0
	jmpc eq, _L671858be_637
	ld r0, (bp+6)
	push r0
	call _f_so_cria
	add sp, 2
	st r0, (bp+-2)
	jmp _L671858be_638
_L671858be_637:
	ld r0, (bp+4)
	push r0
	ld r0, 3
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L671858be_639
	ld r0, 0
	jmp _L671858be_640
_L671858be_639:
	ld r0, 1
_L671858be_640:
	cmp r0, 0
	jmpc eq, _L671858be_641
	ld r0, (bp+6)
	push r0
	call _f_so_mata
	add sp, 2
	st r0, (bp+-2)
	jmp _L671858be_642
_L671858be_641:
	ld r0, (bp+4)
	push r0
	ld r0, 4
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L671858be_643
	ld r0, 0
	jmp _L671858be_644
_L671858be_643:
	ld r0, 1
_L671858be_644:
	cmp r0, 0
	jmpc eq, _L671858be_645
	ld r0, (bp+6)
	push r0
	call _f_so_espera
	add sp, 2
	st r0, (bp+-2)
	ld r0, (bp+-2)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc gt, _L671858be_646
	ld r0, 0
	jmp _L671858be_647
_L671858be_646:
	ld r0, 1
_L671858be_647:
	cmp r0, 0
	jmpc eq, _L671858be_648
	ld r0, 0
	st r0, (bp+-2)
_L671858be_648:
_L671858be_645:
_L671858be_642:
_L671858be_638:
_L671858be_634:
_L671858be_628:
	ld r0, _g_tabela_processos
	push r0
	ld r0, (_g_processo_atual)
	mul r0, 170
	pop r1
	add r1, r0
	ld r0, (r1+2)
	push r0
	ld r0, 2
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L671858be_649
	ld r0, 0
	jmp _L671858be_650
_L671858be_649:
	ld r0, 1
_L671858be_650:
	cmp r0, 0
	jmpc eq, _L671858be_651
	ld r0, _g_tabela_processos
	push r0
	ld r0, (_g_processo_atual)
	mul r0, 170
	pop r1
	add r1, r0
	ld r0, r1
	add r0, 10
	push r0
	ld r0, 0
	mul r0, 2
	pop r1
	add r1, r0
	push r1
	ld r0, (bp+-2)
	pop r1
	st r0, (r1)
_L671858be_651:
	call _f_trata_pendencias
	ld r0, (bp+12)
	push r0
	call _f_so_retoma
	add sp, 2
	ld r0, (bp+12)
	push r0
	ld r0, 0
	mul r0, 2
	pop r1
	add r1, r0
	ld r0, (r1)
	ld sp, bp
	pop bp
	ret
	ld sp, bp
	pop bp
	ret
_f_so_trata_relogio:
	push bp
	ld bp, sp
	sub sp, 4
	ld r0, _g_cont_int
	push r0
	ld r0, 10
	mul r0, 2
	pop r1
	add r1, r0
	push r1
	ld r0, _g_cont_int
	push r0
	ld r0, 10
	mul r0, 2
	pop r1
	add r1, r0
	ld r0, (r1)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	pop r1
	st r0, (r1)
	ld r0, (_g_processo_atual)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc ge, _L671858be_679
	ld r0, 0
	jmp _L671858be_680
_L671858be_679:
	ld r0, 1
_L671858be_680:
	cmp r0, 0
	jmpc eq, _L671858be_681
	ld r0, (bp+4)
	push r0
	call _f_so_salva_quadro
	add sp, 2
	ld r0, (_g_quantum_restante)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	sub r0, r1
	st r0, (_g_quantum_restante)
_L671858be_681:
	call _f_trata_pendencias
	ld r0, (_g_processo_atual)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc ge, _L671858be_682
	ld r0, 0
	jmp _L671858be_683
_L671858be_682:
	ld r0, 1
_L671858be_683:
	cmp r0, 0
	jmpc eq, _L671858be_684
	ld r0, _g_tabela_processos
	push r0
	ld r0, (_g_processo_atual)
	mul r0, 170
	pop r1
	add r1, r0
	ld r0, (r1+2)
	push r0
	ld r0, 2
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc eq, _L671858be_687
	ld r0, 0
	jmp _L671858be_688
_L671858be_687:
	ld r0, 1
_L671858be_688:
	cmp r0, 0
	jmpc eq, _L671858be_686
	ld r0, (_g_quantum_restante)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc le, _L671858be_689
	ld r0, 0
	jmp _L671858be_690
_L671858be_689:
	ld r0, 1
_L671858be_690:
	cmp r0, 0
	jmpc eq, _L671858be_686
	ld r0, 1
	jmp _L671858be_685
_L671858be_686:
	ld r0, 0
_L671858be_685:
	cmp r0, 0
	jmpc eq, _L671858be_691
	ld r0, (_g_fila_n)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc gt, _L671858be_692
	ld r0, 0
	jmp _L671858be_693
_L671858be_692:
	ld r0, 1
_L671858be_693:
	cmp r0, 0
	jmpc eq, _L671858be_694
	ld r0, (_g_processo_atual)
	st r0, (bp+-2)
	ld r0, _g_tabela_processos
	push r0
	ld r0, (bp+-2)
	mul r0, 170
	pop r1
	add r1, r0
	ld r0, (r1)
	st r0, (bp+-4)
	ld r0, 1
	push r0
	ld r0, (bp+-2)
	push r0
	call _f_muda_estado
	add sp, 4
	call _f_so_escalona
	ld r0, (_g_processo_atual)
	push r0
	ld r0, (bp+-2)
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc ne, _L671858be_695
	ld r0, 0
	jmp _L671858be_696
_L671858be_695:
	ld r0, 1
_L671858be_696:
	cmp r0, 0
	jmpc eq, _L671858be_697
	ld r0, (_g_preempcoes_total)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	st r0, (_g_preempcoes_total)
	ld r0, (bp+-4)
	push r0
	ld r0, 0
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc gt, _L671858be_700
	ld r0, 0
	jmp _L671858be_701
_L671858be_700:
	ld r0, 1
_L671858be_701:
	cmp r0, 0
	jmpc eq, _L671858be_699
	ld r0, (bp+-4)
	push r0
	ld r0, 32
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L671858be_702
	ld r0, 0
	jmp _L671858be_703
_L671858be_702:
	ld r0, 1
_L671858be_703:
	cmp r0, 0
	jmpc eq, _L671858be_699
	ld r0, 1
	jmp _L671858be_698
_L671858be_699:
	ld r0, 0
_L671858be_698:
	cmp r0, 0
	jmpc eq, _L671858be_704
	ld r0, _g_met
	push r0
	ld r0, (bp+-4)
	mul r0, 28
	pop r1
	add r1, r0
	push r1
	ld r0, _g_met
	push r0
	ld r0, (bp+-4)
	mul r0, 28
	pop r1
	add r1, r0
	ld r0, (r1+6)
	push r0
	ld r0, 1
	ld r1, r0
	pop r0
	add r0, r1
	pop r1
	st r0, (r1+6)
_L671858be_704:
_L671858be_697:
	jmp _L671858be_705
_L671858be_694:
	ld r0, 3
	st r0, (_g_quantum_restante)
_L671858be_705:
_L671858be_691:
_L671858be_684:
	ld r0, (bp+4)
	push r0
	call _f_so_retoma
	add sp, 2
	ld sp, bp
	pop bp
	ret
_f_inicializa_processos:
	push bp
	ld bp, sp
	sub sp, 6
	ld r0, 0
	st r0, (bp+-2)
_L671858be_711:
	ld r0, (bp+-2)
	push r0
	ld r0, 16
	ld r1, r0
	pop r0
	cmp r0, r1
	jmpc lt, _L671858be_714
	ld r0, 0
	jmp _L671858be_715
_L671858be_714:
	ld r0, 1
_L671858be_715:
	cmp r0, 0
	jmpc eq, _L671858be_713
	ld r0, _g_tabela_processos
	push r0
	ld r0, (bp+-2)
	mul r0, 170
	pop r1
	add r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1+2)
	ld r0, _g_tabela_processos
	push r0
	ld r0, (bp+-2)
	mul r0, 170
	pop r1
	add r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1+4)
	ld r0, _g_tabela_processos
	push r0
	ld r0, (bp+-2)
	mul r0, 170
	pop r1
	add r1, r0
	push r1
	ld r0, 0
	pop r1
	st r0, (r1)
_L671858be_712:
	ld r0, (bp+-2)
	push r0
	add r0, 1
	st r0, (bp+-2)
	pop r0
	jmp _L671858be_711
_L671858be_713:
	ld r0, 1
	xor r0, -1
	add r0, 1
	st r0, (_g_processo_atual)
	ld r0, 0
	st r0, (_g_fila_n)
	ld r0, _str671858be_52
	push r0
	call _f_console_imprime
	add sp, 2
	ld r0, _f_processo_init
	st r0, (bp+-6)
	ld r0, (bp+-6)
	push r0
	call _f_aloca_processo
	add sp, 2
	st r0, (bp+-4)
	ld r0, _g_tabela_processos
	push r0
	ld r0, (bp+-4)
	mul r0, 170
	pop r1
	add r1, r0
	ld r0, (r1)
	st r0, (_g_pid_init)
	ld r0, (_g_pid_init)
	push r0
	ld r0, _str671858be_53
	push r0
	call _f_log_pid
	add sp, 4
	call _f_so_escalona
	ld r0, (bp+4)
	push r0
	call _f_so_recupera_quadro
	add sp, 2
	ld sp, bp
	pop bp
	ret

.data
_g_tabela_processos:
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
_g_proximo_pid:
	.dw 1
_g_processo_atual:
	.dw -1
_g_pid_init:
	.dw 0
_g_quantum_restante:
	.dw 0
_g_fila:
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
_g_fila_n:
	.dw 0
_g_met:
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
_g_cont_int:
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
_g_preempcoes_total:
	.dw 0
_g_tempo_ocioso:
	.dw 0
_g_em_ocioso:
	.dw 0
_g_ocioso_desde:
	.dw 0
_g_linhas_pag:
	.dw 0
_g_pilha_ociosa:
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
	.db 0
_g_relogio_limite:
	.dw 10000

; ----- literais de string -----
_str671858be_0:
	.db 45, 45, 32, 69, 60, 101, 110, 116, 101, 114, 62, 32, 99, 111, 110, 116, 105, 110, 117, 97, 32, 45, 45, 0
_str671858be_1:
	.db 45, 45, 32, 69, 60, 101, 110, 116, 101, 114, 62, 32, 99, 111, 110, 116, 105, 110, 117, 97, 32, 45, 45, 0
_str671858be_2:
	.db 80, 82, 73, 79, 82, 73, 68, 65, 68, 69, 0
_str671858be_3:
	.db 32, 113, 61, 0
_str671858be_4:
	.db 32, 99, 114, 105, 97, 100, 111, 115, 61, 0
_str671858be_5:
	.db 32, 112, 114, 101, 101, 109, 112, 99, 61, 0
_str671858be_6:
	.db 116, 111, 116, 97, 108, 61, 0
_str671858be_7:
	.db 32, 111, 99, 105, 111, 115, 111, 61, 0
_str671858be_8:
	.db 32, 124, 32, 105, 110, 116, 32, 114, 101, 108, 61, 0
_str671858be_9:
	.db 32, 115, 121, 115, 61, 0
_str671858be_10:
	.db 32, 99, 111, 110, 61, 0
_str671858be_11:
	.db 112, 105, 100, 32, 114, 101, 116, 32, 112, 114, 101, 32, 114, 101, 115, 112, 40, 110, 41, 32, 101, 110, 116, 32, 80, 47, 66, 47, 69, 32, 116, 101, 109, 112, 111, 32, 80, 47, 66, 47, 69, 0
_str671858be_12:
	.db 112, 0
_str671858be_13:
	.db 32, 0
_str671858be_14:
	.db 32, 118, 105, 118, 111, 0
_str671858be_15:
	.db 32, 0
_str671858be_16:
	.db 32, 0
_str671858be_17:
	.db 40, 0
_str671858be_18:
	.db 61, 61, 61, 32, 70, 73, 77, 32, 61, 61, 61, 0
_str671858be_19:
	.db 80, 82, 73, 79, 82, 73, 68, 65, 68, 69, 0
_str671858be_20:
	.db 32, 113, 61, 0
_str671858be_21:
	.db 32, 99, 114, 105, 97, 100, 111, 115, 61, 0
_str671858be_22:
	.db 32, 112, 114, 101, 101, 109, 112, 99, 61, 0
_str671858be_23:
	.db 116, 111, 116, 97, 108, 61, 0
_str671858be_24:
	.db 32, 111, 99, 105, 111, 115, 111, 61, 0
_str671858be_25:
	.db 32, 124, 32, 105, 110, 116, 32, 114, 101, 108, 61, 0
_str671858be_26:
	.db 32, 115, 121, 115, 61, 0
_str671858be_27:
	.db 32, 99, 111, 110, 61, 0
_str671858be_28:
	.db 112, 105, 100, 32, 114, 101, 116, 32, 112, 114, 101, 32, 114, 101, 115, 112, 40, 110, 41, 32, 101, 110, 116, 32, 80, 47, 66, 47, 69, 32, 116, 101, 109, 112, 111, 32, 80, 47, 66, 47, 69, 0
_str671858be_29:
	.db 112, 0
_str671858be_30:
	.db 32, 0
_str671858be_31:
	.db 32, 118, 105, 118, 111, 0
_str671858be_32:
	.db 32, 0
_str671858be_33:
	.db 32, 0
_str671858be_34:
	.db 40, 0
_str671858be_35:
	.db 61, 61, 61, 32, 70, 73, 77, 32, 61, 61, 61, 0
_str671858be_36:
	.db 100, 101, 97, 100, 108, 111, 99, 107, 58, 32, 116, 111, 100, 111, 115, 32, 101, 115, 112, 101, 114, 97, 110, 100, 111, 32, 117, 110, 115, 32, 97, 111, 115, 32, 111, 117, 116, 114, 111, 115, 0
_str671858be_37:
	.db 110, 101, 110, 104, 117, 109, 32, 112, 114, 111, 99, 101, 115, 115, 111, 32, 114, 101, 115, 116, 97, 110, 116, 101, 58, 32, 102, 105, 109, 0
_str671858be_38:
	.db 100, 101, 97, 100, 108, 111, 99, 107, 58, 32, 116, 111, 100, 111, 115, 32, 101, 115, 112, 101, 114, 97, 110, 100, 111, 32, 117, 110, 115, 32, 97, 111, 115, 32, 111, 117, 116, 114, 111, 115, 0
_str671858be_39:
	.db 110, 101, 110, 104, 117, 109, 32, 112, 114, 111, 99, 101, 115, 115, 111, 32, 114, 101, 115, 116, 97, 110, 116, 101, 58, 32, 102, 105, 109, 0
_str671858be_40:
	.db 91, 83, 79, 93, 32, 0
_str671858be_41:
	.db 91, 83, 79, 93, 32, 0
_str671858be_42:
	.db 91, 83, 79, 93, 32, 0
_str671858be_43:
	.db 91, 83, 79, 93, 32, 0
_str671858be_44:
	.db 99, 114, 105, 97, 100, 111, 32, 112, 105, 100, 32, 0
_str671858be_45:
	.db 99, 114, 105, 97, 100, 111, 32, 112, 105, 100, 32, 0
_str671858be_46:
	.db 109, 111, 114, 116, 111, 32, 112, 105, 100, 32, 0
_str671858be_47:
	.db 105, 110, 105, 116, 32, 109, 111, 114, 114, 101, 117, 58, 32, 102, 105, 109, 0
_str671858be_48:
	.db 109, 111, 114, 116, 111, 32, 112, 105, 100, 32, 0
_str671858be_49:
	.db 105, 110, 105, 116, 32, 109, 111, 114, 114, 101, 117, 58, 32, 102, 105, 109, 0
_str671858be_50:
	.db 91, 83, 79, 93, 32, 98, 111, 111, 116, 10, 0
_str671858be_51:
	.db 99, 114, 105, 97, 100, 111, 32, 112, 105, 100, 32, 0
_str671858be_52:
	.db 91, 83, 79, 93, 32, 98, 111, 111, 116, 10, 0
_str671858be_53:
	.db 99, 114, 105, 97, 100, 111, 32, 112, 105, 100, 32, 0
