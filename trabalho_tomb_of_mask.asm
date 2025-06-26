; ────┤ Trabalho de Introducao a Sistemas Computacionais (SSC0955)│ Primeiro Semestre de 2025 ├────
; Gabriel Lima Alves - 12558547

; Agradecimento aos criadores do projeto Battle City Assembly ICMC

jmp main

;********************************************************;
;                         DADOS                          ;
;********************************************************;

; ------------- JOGADOR -----------------;
; Variaveis para controle de posicao do jogador
posJogador : var #1 			; Posicao do jogador com realacao ao mapa de tijolos
posJogadorAnt : var #1 		; Posicao anterior do jogador nos tijolos
; Variaveis para controle de direcao do jogador
; UP = 0, RIGHT = 4, DOWN = 8, LEFT = 12
dirJogador: var #1 		; Direcao atual do jogador
dirJogadorAnt : var #1 	; Direcao anterior do jogador
corJogador : var #1
	static corJogador + #0, #2816 ; laranja

; -> CARACTERES DE JOGADOR.
jogadorChars: string "abcdefghijklmnop"

; -> MARGEM DA TELA DO JOGO. cor: amarelo
margemLinha0:  string "#######################################"
margemLinha1:  string "#######################################"
margemLinha2:  string "####                              qr###"
margemLinha3:  string "####                              st###"
margemLinha4:  string "####                                ###"
margemLinha5:  string "####                                ###"
margemLinha6:  string "####                                ###"
margemLinha7:  string "####                                ###"
margemLinha8:  string "####                                ###"
margemLinha9:  string "####                                ###"
margemLinha10: string "####                                ###"
margemLinha11: string "####                                ###"
margemLinha12: string "####                                ###"
margemLinha13: string "####                                ###"
margemLinha14: string "####                                ###"
margemLinha15: string "####                                ###"
margemLinha16: string "####                                ###"
margemLinha17: string "####                                ###"
margemLinha18: string "####                                ###"
margemLinha19: string "####                                ###"
margemLinha20: string "####                                ###"
margemLinha21: string "####                                ###"
margemLinha22: string "####                                ###"
margemLinha23: string "####                                ###"
margemLinha24: string "####                                ###"
margemLinha25: string "####                                ###"
margemLinha26: string "####                                ###"
margemLinha27: string "####                                ###"
margemLinha28: string "#######################################"
margemLinha29: string "#######################################"

; -> TIJOLOS. cor: amarelo
tijolosLinha0:  string "                                       "
tijolosLinha1:  string "                                       "
tijolosLinha2:  string "                                       "
tijolosLinha3:  string "                                       "
tijolosLinha4:  string "                                       "
tijolosLinha5:  string "                                       "
tijolosLinha6:  string "                                       "
tijolosLinha7:  string "                                       "
tijolosLinha8:  string "                                       "
tijolosLinha9:  string "                                       "
tijolosLinha10: string "                                       "
tijolosLinha11: string "                                       "
tijolosLinha12: string "                                       "
tijolosLinha13: string "                                       "
tijolosLinha14: string "                                       "
tijolosLinha15: string "                                       "
tijolosLinha16: string "                                       "
tijolosLinha17: string "                                       "
tijolosLinha18: string "                                       "
tijolosLinha19: string "                                       "
tijolosLinha20: string "                                       "
tijolosLinha21: string "                                       "
tijolosLinha22: string "                                       "
tijolosLinha23: string "                                       "
tijolosLinha24: string "                                       "
tijolosLinha25: string "                                       "
tijolosLinha26: string "                                       "
tijolosLinha27: string "                                       "
tijolosLinha28: string "                                       "
tijolosLinha29: string "                                       "


tijolosLinhaStatic0:  string "                                       "
tijolosLinhaStatic1:  string "                                       "
tijolosLinhaStatic2:  string "           ###??#w         ?##  uu     "
tijolosLinhaStatic3:  string "           ###  #w         ?##  uu     "
tijolosLinhaStatic4:  string "      ###  ###  ##  #####  ###  ####   "
tijolosLinhaStatic5:  string "      ###  ###  ##  #####  ###  ####   "
tijolosLinhaStatic6:  string "                           ###  ####   "
tijolosLinhaStatic7:  string "                           ###  ####   "
tijolosLinhaStatic8:  string "    zz###  ###  ##xx####y       y###   "
tijolosLinhaStatic9:  string "    #####  ###  ##??####y       y###   "
tijolosLinhaStatic10: string "    #      #                       ?   "
tijolosLinhaStatic11: string "    #      #                       ?   "
tijolosLinhaStatic12: string "    #  #####    ##  #######  ?     ?   "
tijolosLinhaStatic13: string "    #  #####    ##  ####zz#  ?     ?   "
tijolosLinhaStatic14: string "    #           y#  ####           ?   "
tijolosLinhaStatic15: string "    #           y#  ####           ?   "
tijolosLinhaStatic16: string "    ####  ##  ####  ####  #  ?  ####   "
tijolosLinhaStatic17: string "    ####  ##  ####  ####  #  ?  ####   "
tijolosLinhaStatic18: string "                ##  ####  #            "
tijolosLinhaStatic19: string "                ##  ####  #            " 
tijolosLinhaStatic20: string "      ##  ##              #     ??     "
tijolosLinhaStatic21: string "      ##  ##              #     ??     "
tijolosLinhaStatic22: string "          ####  ##        #     ??     "
tijolosLinhaStatic23: string "          ####  ##        #???  ??     "
tijolosLinhaStatic24: string "    ##########  ##  ##########  ??     "
tijolosLinhaStatic25: string "    ##########  ##  ##########  ??     "
tijolosLinhaStatic26: string "    z           ?#                     "
tijolosLinhaStatic27: string "    z           ?#                     "
tijolosLinhaStatic28: string "                                       "
tijolosLinhaStatic29: string "                                       "


tombofmaskLinha0:  string "                                       "
tombofmaskLinha1:  string "                                       "
tombofmaskLinha2:  string "                                       "
tombofmaskLinha3:  string "                                       "
tombofmaskLinha4:  string "     #####  ###     # #    ####        "
tombofmaskLinha5:  string "       #   #   #   # # #   #   #       "
tombofmaskLinha6:  string "       #   #   #  #  #  #  ####        "  
tombofmaskLinha7:  string "       #   #   #  #  #  #  #   #       "
tombofmaskLinha8:  string "       #    ###   #     #  ####        "
tombofmaskLinha9:  string "                                       "
tombofmaskLinha10: string "                                       "
tombofmaskLinha11: string "                ###   ####             "
tombofmaskLinha12: string "               #   #  #                "
tombofmaskLinha13: string "               #   #  ###              "
tombofmaskLinha14: string "               #   #  #                "
tombofmaskLinha15: string "                ###   #                "
tombofmaskLinha16: string "                                       "
tombofmaskLinha17: string "                                       "
tombofmaskLinha18: string "        # #      #    #####  #  #      "
tombofmaskLinha19: string "       # # #    # #   #      # #       "
tombofmaskLinha20: string "      #  #  #  #   #  #####  ##        "
tombofmaskLinha21: string "      #  #  #  #####      #  # #       "
tombofmaskLinha22: string "      #     #  #   #  #####  #  #      "
tombofmaskLinha23: string "                                       "
tombofmaskLinha24: string "                                       "
tombofmaskLinha25: string "                                       "
tombofmaskLinha26: string "                                       "
tombofmaskLinha27: string "                                       "
tombofmaskLinha28: string "                                       "
tombofmaskLinha29: string "                                       "


telaInicialLinha0:  string "                                       "
telaInicialLinha1:  string "                                       "
telaInicialLinha2:  string "                                       "
telaInicialLinha3:  string "                                       "
telaInicialLinha4:  string "                                       "
telaInicialLinha5:  string "                                       "
telaInicialLinha6:  string "                                       "
telaInicialLinha7:  string "                                       "
telaInicialLinha8:  string "                                       "
telaInicialLinha9:  string "                                       "
telaInicialLinha10: string "                                       "
telaInicialLinha11: string "                                       "
telaInicialLinha12: string "                                       "
telaInicialLinha13: string "                                       "
telaInicialLinha14: string "                                       "
telaInicialLinha15: string "                                       "
telaInicialLinha16: string "                                       "
telaInicialLinha17: string "                                       "
telaInicialLinha18: string "                                       "
telaInicialLinha19: string "                                       "
telaInicialLinha20: string "                                       "
telaInicialLinha21: string "                                       "
telaInicialLinha22: string "                                       "
telaInicialLinha23: string "                                       "
telaInicialLinha24: string "                                       "
telaInicialLinha25: string "                                       "
telaInicialLinha26: string "        PRESS [SPACE] TO START         "
telaInicialLinha27: string "                                       "
telaInicialLinha28: string "                                       "
telaInicialLinha29: string "                                       "

jogadorGanhouLinha0:  string "                                       "
jogadorGanhouLinha1:  string "                                       "
jogadorGanhouLinha2:  string "                                       "
jogadorGanhouLinha3:  string "                                       "
jogadorGanhouLinha4:  string "    ###  #      #  #   # #### ###      "
jogadorGanhouLinha5:  string "    #  # #     # #  # #  #    #  #     "
jogadorGanhouLinha6:  string "    ###  #    #   #  #   ###  ###      "
jogadorGanhouLinha7:  string "    #    #    #####  #   #    # #      "
jogadorGanhouLinha8:  string "    #    #### #   #  #   #### #  #     "
jogadorGanhouLinha9:  string "                                       "
jogadorGanhouLinha10: string "                                       "
jogadorGanhouLinha11: string "      #     # ### #  #  ###  # #       "
jogadorGanhouLinha12: string "      #     #  #  ## # #     # #       "
jogadorGanhouLinha13: string "       # # #   #  # ##  ##   # #       "
jogadorGanhouLinha14: string "       # # #   #  #  #    #            "
jogadorGanhouLinha15: string "        # #   ### #  # ###   # #       "
jogadorGanhouLinha16: string "                                       "
jogadorGanhouLinha17: string "                                       "
jogadorGanhouLinha18: string "                                       "
jogadorGanhouLinha19: string "                                       "
jogadorGanhouLinha20: string "                                       "
jogadorGanhouLinha21: string "                                       "
jogadorGanhouLinha22: string "       PRESS [SPACE] TO RESTART        "
jogadorGanhouLinha23: string "                                       "
jogadorGanhouLinha24: string "                                       "
jogadorGanhouLinha25: string "                                       "
jogadorGanhouLinha26: string "                                       "
jogadorGanhouLinha27: string "                                       "
jogadorGanhouLinha28: string "                                       "
jogadorGanhouLinha29: string "                                       "


jogadorPerdeuLinha0:  string "                                       "
jogadorPerdeuLinha1:  string "                                       "
jogadorPerdeuLinha2:  string "                                       "
jogadorPerdeuLinha3:  string "                                       "
jogadorPerdeuLinha4:  string "      ####   #      # #    ####        "
jogadorPerdeuLinha5:  string "     #      # #    # # #   #           "
jogadorPerdeuLinha6:  string "     #  ## #   #  #  #  #  ###         "
jogadorPerdeuLinha7:  string "     #   # #####  #  #  #  #           "
jogadorPerdeuLinha8:  string "      #### #   #  #     #  ####        "
jogadorPerdeuLinha9:  string "                                       "
jogadorPerdeuLinha10: string "                                       "
jogadorPerdeuLinha11: string "        ###  #    # ####  ####         "
jogadorPerdeuLinha12: string "       #   # #    # #     #   #        "
jogadorPerdeuLinha13: string "       #   # #    # ###   ####         "
jogadorPerdeuLinha14: string "       #   #  #  #  #     #  #         "
jogadorPerdeuLinha15: string "        ###    ##   ####  #   #        "
jogadorPerdeuLinha16: string "                                       "
jogadorPerdeuLinha17: string "                                       "
jogadorPerdeuLinha18: string "                                       "
jogadorPerdeuLinha19: string "                                       "
jogadorPerdeuLinha20: string "                                       "
jogadorPerdeuLinha21: string "                                       "
jogadorPerdeuLinha22: string "       PRESS [SPACE] TO RESTART        "
jogadorPerdeuLinha23: string "                                       "
jogadorPerdeuLinha24: string "                                       "
jogadorPerdeuLinha25: string "                                       "
jogadorPerdeuLinha26: string "                                       "
jogadorPerdeuLinha27: string "                                       "
jogadorPerdeuLinha28: string "                                       "
jogadorPerdeuLinha29: string "                                       "

main:
	; Apaga todos os caracteres da tela	
	call ApagaTela

	call ImprimeTombOfMask

	call ImprimeTelaInicial

	loadn r2, #' '
Loop_inicial:
	inchar r1
	cmp r2, r1
	jne Loop_inicial
	
	; Apaga todos os caracteres da tela
	call ApagaTela
	
	; Imprime a margem
	call ImprimeMargem
	
	; Imprime os tijolos
	call ImprimeTijolos

	; Spawna o jogador
	call spawnaJogador
	
	; Loop 1 do jogo
	loadn r0, #0 ; Contador de loops, c = 0
	Loop:

		call MoveJogador	; Chama rotina de movimento do jogador se c % 5 == 0
		
		call Delay
		inc r0 	;c++
		jmp Loop

    halt

;========================================================;
;						SPAWN JOGADOR 
spawnaJogador:
	push r0
	
	; Posicao inicial do jogador com relacao aos tijolos = 1054
	loadn r0, #1054
	store posJogador, r0	
		
	; Direcao inicial do jogador = UP = 0
	loadn r0, #0
	store dirJogador, r0
	
	; Inicia a posicao anterior em um lugar vazio, para nao apagar o mapa
	loadn r0, #84
	store posJogadorAnt, r0
	
	pop r0	
	rts
;					SPAWN JOGADOR
;========================================================;

;========================================================;
;						APAGA Jogador
; <- r6 = endereco da posicao anterior do jogador
ApagaJogador:
	; Empilha registradores para nao perder seus valores
	push r0
	push r1
	push r2
	push r6
	
	; r0 recebe a posicao anterior do jogador na tela
	loadi r0, r6
	; r1 recebe ' ' para apagar o jogador
	loadn r1, #' '
	; r2 recebe 39 para ir para a proxima linha de impressao
	loadn r2, #39
	
	; Apaga os quatro caracteres do jogador
	outchar r1, r0 	; Apaga o primeiro caractere
	; nops para nao bugar a impressao (impressoes sucessivas levam a erros na impressao)
	nop
	nop
	nop
	nop
	nop
	nop
	inc r0 			; Vai para o caractere a direita
	outchar r1, r0 	; Apaga o segundo caractere
	; nops para nao bugar a impressao (impressoes sucessivas levam a erros na impressao)
	nop
	nop
	nop
	nop
	nop
	nop
	add r0, r0, r2 	; Vai para a proxima linha
	outchar r1, r0	; Apaga o terceiro caractere
	; nops para nao bugar a impressao (impressoes sucessivas levam a erros na impressao)
	nop
	nop
	nop
	nop
	nop
	nop
	inc r0 			; Vai para o caractere a direita
	outchar r1, r0	; Apaga o quarto caractere
	; nops para nao bugar a impressao (impressoes sucessivas levam a erros na impressao)
	nop
	nop
	nop
	nop
	nop
	nop
	
	; Desempilha registradores
	pop r6
	pop r2
	pop r1
	pop r0
	rts	
;					  FIM APAGA jogador
;========================================================;

;========================================================;
;						ATUALIZA JOgador
; <- r7 = endereco da posicao atual do jogador
; <- r6 = endereco da posicao anterior do jogador
; <- r5 = endereco da direcao atual do jogador
; <- r4 = endereco da direcao anterior do jogador
; <- r3 = cor do jogador
AtualizaJogador:
	; Empilha registradores para proteger seus valores
	push r0
	push r1
	push r2
	push r3
	push r4
	push r5
	push r6
	push r7
	
	loadi r1, r7 ; r1 = posicao atual do jogador
	loadi r2, r6 ; r2 = posicao anterior do jogador
	cmp r1, r2 ; compara a posicao atual e anterior
	jne atualiza ; se a posicao mudou, atualiza
	
	loadi r1, r5 ; r1 = direcao atual do jogador
	loadi r2, r4 ; r2 = direcao anterior do jogador
	cmp r1, r2 ; compara a direcao atual e anterior
	jne atualiza ; se a direcao mudou, atualiza
	
fim_atualizaJogador:
	; posicao anterior <= posicao atual
	loadi r1, r7
	storei r6, r1
	
	; direcao anterior <= direcao atual
	loadi r1, r5
	storei r4, r1
	
	
	; Desempilha registradores
	pop r7
	pop r6
	pop r5
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0		
	rts
	
atualiza:

	; r0 = posicao do jogador
	loadi r0, r7
	
	; r6 <- endereco da posicao anterior do jogador
	call ApagaJogador
	
	; Define os caracteres que vao ser usados
	loadn r1, #jogadorChars ; carrega o vetor de caracteres em r1
	loadi r2, r5 ; r2 = direcao do jogador
	add r1, r1, r2 ; agora r1 aponta para o primeiro caractere da direcao correta
	
	
	; -- IMPRESSAO DOS CARACTERES --
	
	; -> Primeiro caractere
	loadi r2, r1 	; r2 recebe o caractere apontado pelo ponteiro de caracteres (r1)
	add r2, r2, r3 	; Adiciona a cor
	outchar r2, r0	; Imprime o primeiro caractere
	; nops para nao bugar a impressao (impressoes sucessivas levam a erros na impressao)
	nop
	nop
	nop
	nop
	nop
	nop
	call chegouFinal
	
	; -> Segundo caractere
	inc r0 			; r0++ ---> posicao de impressao vai para a direita
	inc r1 			; r1++ ---> r1 aponta para o proximo caractere no vetor de caracteres
	loadi r2, r1 	; r2 recebe o caractere apontado pelo ponteiro de caracteres (r1)
	add r2, r2, r3 	; Adiciona a cor
	outchar r2, r0	; Imprime o segundo caractere
	; nops para nao bugar a impressao (impressoes sucessivas levam a erros na impressao)
	nop
	nop
	nop
	nop
	nop
	nop
	call chegouFinal
	
	; -> Terceiro caractere
	loadn r2, #39 	; r2 = auxiliar para descer de linha (40 - 1 porque ja esta no caractere a direita da posicao do jogador)
	add r0, r0, r2 	; r0 += 39 ---> posicao de impressao vai para a proxima linha
	inc r1 			; r1++ ---> r1 aponta para o proximo caractere no vetor de caracteres
	loadi r2, r1 	; r2 recebe o caractere apontado pelo ponteiro de caracteres (r1)
	add r2, r2, r3 	; Adiciona a cor
	outchar r2, r0	; Imprime o terceiro caractere
	; nops para nao bugar a impressao (impressoes sucessivas levam a erros na impressao)
	nop
	nop
	nop
	nop
	nop
	nop
	call chegouFinal
	
	; -> Quarto caractere
	inc r0 			; r0++ ---> posicao de impressao vai para a direita
	inc r1 			; r1++ ---> r1 aponta para o caractere no vetor de caracteres
	loadi r2, r1 	; r2 recebe o caractere apontado pelo ponteiro de caracteres (r1)
	add r2, r2, r3 	; Adiciona a cor
	outchar r2, r0	; Imprime o quarto caractere
	; nops para nao bugar a impressao (impressoes sucessivas levam a erros na impressao)
	nop
	nop
	nop
	nop
	nop
	nop
	call chegouFinal
	
	
	jmp fim_atualizaJogador
	
; <- r0 = posicao q vai comparar com a aguia
chegouFinal:
	push r0
	push r1 
	
	loadn r1, #115
	cmp r0, r1
	jeq jogadorGanhou
	loadn r1, #116
	cmp r0, r1
	jeq jogadorGanhou
	loadn r1, #155
	cmp r0, r1
	jeq jogadorGanhou
	loadn r1, #156
	cmp r0, r1
	jeq jogadorGanhou
	
	pop r1
	pop r0
	rts

;					  FIM ATUALIZA JOGADOR
;========================================================;

;========================================================;
;						MOVE JOGADOR
MoveJogador:
	; Apenas o registrador r0 precisa ser salvo, pois é usado pelo Loop principal
	push r0
	
	; Pega o input do jogador
	inchar r1
	
	; Carrega o endereco de posJogador em r7
	loadn r7, #posJogador
	; Carrega o endereco de dirJogador em r6
	loadn r6, #dirJogador
	
	; Atualiza a posicao do jogador dependendo do input do usuário
	loadn r2, #'w'
	cmp r1, r2
	jeq UP_jogador ; Move UP
	
	loadn r2, #'d'
	cmp r1, r2
	jeq RIGHT_jogador ; Move RIGHT
	
	loadn r2, #'s'
	cmp r1, r2
	jeq DOWN_jogador ; Move DOWN
	
	loadn r2, #'a'
	cmp r1, r2
	jeq LEFT_jogador ; Move LEFT

FinalizaMovimento:
	loadn r7, #posJogador
	loadn r6, #posJogadorAnt
	loadn r5, #dirJogador
	loadn r4, #dirJogadorAnt
	load r3, corJogador
	call AtualizaJogador

	; Restaura r0
	pop r0		
	rts

;						FIM MOVE JOGADOR
;========================================================;

;-------------------------------------------------------;
;                         UP JOGADOR
; Move um jogador para cima ate colidir
; <- r7 = endereco da posicao do jogador 
; <- r6 = endereco da direcao do jogador
UP_jogador:
	; Carrega a posicao do jogador em r0
	loadi r0, r7
	
	; Atualiza a direcao
	loadn r1, #0
	storei r6, r1 ; dirJogador = UP = 0
	
	; -- ATUALIZA POSICAO ATUAL EM r0 --
	loadn r1, #84 		; r1 = auxiliar para verificar se chegou na primeira linha
	loadn r2, #40 		; r2 = auxiliar para subir linha
	sub r0, r0, r2 		; pos = pos - 40 ---> sobe uma linha
	cmp r0, r1 			; Verifica se ja esta na primeira linha
	jle FinalizaMovimento 	; Se ja estiver na primeira linha nao movimenta

	; -- VERIFICACAO SE A POSICAO QUE QUER IR EH UM TIJOLO --
	loadn r1, #'#' 				; r1 = '#'  ---> auxiliar para comparar a nova posicao com um tijolo
	loadn r4, #tijolosLinha0 	; r4 = ponteiro para o primeiro caractere do mapa de tijolos
	add r4, r4, r0 				; r4 = r4 + posJogador ---> ponteiro para o caractere do mapa de tijolos na posicao que o jogador quer ir
	loadi r3, r4 				; r3 = caractere do mapa de tijolos na posicao que o jogador quer ir
	cmp r1, r3 					; Compara o caractere na posicao que o jogador quer ir com um tijolo
	jeq FinalizaMovimento 			; Se for um tijolo o movimento nao eh realizado
	; TAMBEM EH NECESSARIO VERIFICAR O CARACTERE A DIREITA !!! (O jogador tem dimensoes 2x2)
	inc r4						; Ponteiro para caractere vai um para a direita
	loadi r3, r4 				; r4 = caractere na direita da posicao que o jogador quer ir
	cmp r1, r3 					; Compara o caractere a direita da posicao que o jogador quer ir 
	jeq FinalizaMovimento 		; Se for um tijolo o movimento nao eh realizado
	
	; -- VERIFICACAO SE A POSICAO QUE QUER IR EH UM ESPINHO --
	loadn r1, #'?' 				; r1 = '?'  ---> auxiliar para comparar o caractere abaixo da nova posicao com um espinho
	loadn r4, #tijolosLinha0 	; r4 = ponteiro para o primeiro caractere do mapa de tijolos
	add r4, r4, r0 				; r4 = r4 + posJogador ---> ponteiro para o caractere do mapa de tijolos na posicao que o jogador quer ir
	loadi r3, r4				; r3 = caractere do mapa de tijolos na posicao abaixo da que o jogador quer ir
	cmp r1, r3 					; Compara o caractere na posicao abaixo da que o jogador quer ir com um espinho
	jeq jogadorPerdeu 			; Se for um espinho o jogador perde
	; TAMBEM EH NECESSARIO VERIFICAR O CARACTERE A DIREITA !!! (O jogador tem dimensoes 2x2)
	inc r4						; Ponteiro para caractere vai um para a direita
	loadi r3, r4 				; r3 = caractere na direita e abaixo da posicao que o jogador quer ir
	cmp r1, r3 					; Compara o caractere a direita e abaixo da posicao que o jogador quer ir com um espinho
	jeq jogadorPerdeu 			; Se for um espinho o jogador perde

	; -- VERIFICACAO SE A POSICAO QUE QUER IR EH UM TRAMPOLIM --
	loadn r1, #'w' 				; r1 = 'w'
	loadn r4, #tijolosLinha0 	; r4 = ponteiro para o primeiro caractere do mapa de tijolos
	add r4, r4, r0 				; r4 = r4 + posJogador ---> ponteiro para o caractere do mapa na NOVA posicao
	loadi r3, r4				; r3 = caractere do mapa de tijolos na posicao que o jogador quer ir
	cmp r1, r3 					; Compara o caractere na posicao que o jogador quer ir com um trampolim
	jeq DOWN_jogador 			; Se for um trampolim, vai para a direita
	; TAMBEM EH NECESSARIO VERIFICAR O CARACTERE A DIREITA !!! (O jogador tem dimensoes 2x2)
	inc r4						; Ponteiro para caractere vai um para a direita
	loadi r3, r4 				; r3 = caractere na direita da posicao que o jogador quer ir
	cmp r1, r3 					; Compara o caractere a direita da posicao que o jogador quer ir com um trampolim
	jeq DOWN_jogador 			; Se for um trampolim, vai para a direita

	; -- VERIFICACAO SE A POSICAO QUE QUER IR EH UM TRAMPOLIM --
	loadn r1, #'x' 				; r1 = 'x'
	loadn r4, #tijolosLinha0 	; r4 = ponteiro para o primeiro caractere do mapa de tijolos
	add r4, r4, r0 				; r4 = r4 + posJogador ---> ponteiro para o caractere do mapa na NOVA posicao
	loadi r3, r4				; r3 = caractere do mapa de tijolos na posicao que o jogador quer ir
	cmp r1, r3 					; Compara o caractere na posicao que o jogador quer ir com um trampolim
	jeq LEFT_jogador 			; Se for um trampolim, vai para a direita
	; TAMBEM EH NECESSARIO VERIFICAR O CARACTERE A DIREITA !!! (O jogador tem dimensoes 2x2)
	inc r4						; Ponteiro para caractere vai um para a direita
	loadi r3, r4 				; r3 = caractere na direita da posicao que o jogador quer ir
	cmp r1, r3 					; Compara o caractere a direita da posicao que o jogador quer ir com um trampolim
	jeq LEFT_jogador 			; Se for um trampolim, vai para a direita

	; -- VERIFICACAO SE A POSICAO QUE QUER IR EH UM TRAMPOLIM --
	loadn r1, #'z' 				; r1 = 'z'
	loadn r4, #tijolosLinha0 	; r4 = ponteiro para o primeiro caractere do mapa de tijolos
	add r4, r4, r0 				; r4 = r4 + posJogador ---> ponteiro para o caractere do mapa na NOVA posicao
	loadi r3, r4				; r3 = caractere do mapa de tijolos na posicao que o jogador quer ir
	cmp r1, r3 					; Compara o caractere na posicao que o jogador quer ir com um trampolim
	jeq RIGHT_jogador 			; Se for um trampolim, vai para a direita
	; TAMBEM EH NECESSARIO VERIFICAR O CARACTERE A DIREITA !!! (O jogador tem dimensoes 2x2)
	inc r4						; Ponteiro para caractere vai um para a direita
	loadi r3, r4 				; r3 = caractere na direita da posicao que o jogador quer ir
	cmp r1, r3 					; Compara o caractere a direita da posicao que o jogador quer ir com um trampolim
	jeq RIGHT_jogador 			; Se for um trampolim, vai para a direita

	; -- PASSOU TODOS OS TESTES --
	storei r7, r0

	; -- Bloco de Animação --
	push r6 ; Salva r6 (&dirJogador) para não corrompê-lo
    loadn r6, #posJogadorAnt
    loadn r5, #dirJogador
    loadn r4, #dirJogadorAnt
    load r3, corJogador
    call AtualizaJogador
    call Delay
	pop r6 ; Restaura r6
	
	jmp UP_jogador

;-------------------------------------------------------;
;                         RIGHT JOGADOR
; Move um jogador para a direita ate colidir
; <- r7 = endereco da posicao do jogador 
; <- r6 = endereco da direcao do jogador
RIGHT_jogador:
	; Carrega a posicao do jogador em r0
	loadi r0, r7
	
	; Atualiza a direcao
	loadn r1, #4
	storei r6, r1 ; dirJogador = RIGHT = 4
	
	; -- ATUALIZA POSICAO ATUAL EM r0 --
	loadn r1, #34 				; r1 = auxiliar para verificar se esta na ultima coluna
	loadn r2, #40 				; r2 = auxiliar para fazer mod
	inc r0 						; r0++ ---> Posicao vai um pra direita
	mod r3, r0, r2 				; r3 = pos % 40 ---> r3 = coluna
	cmp r3, r1 					; Verifica se ja esta na ultima coluna (coluna 34 por causa da margem)
	jgr FinalizaMovimento 		; Se ja estiver na ultima coluna nao movimenta
	
	; -- VERIFICACAO SE A POSICAO QUE QUER IR EH UM TIJOLO --
	loadn r1, #'#'				; r1 = '#'  ---> auxiliar para comparar o caractere a direita da nova posicao com um tijolo
	loadn r4, #tijolosLinha0 	; r4 = ponteiro para o primeiro caractere do mapa de tijolos
	add r4, r4, r0 				; r4 = r4 + posJogador ---> ponteiro para o caractere do mapa de tijolos na posicao que o jogador quer ir
	inc r4 						; r4++ ---> r4 vai um pra direita porque o jogador eh (2x2)
	loadi r3, r4 				; r3 = caractere do mapa de tijolos apontado por r4
	cmp r1, r3 					; Compara o caractere na posicao a direita que o jogador quer ir com um tijolo
	jeq FinalizaMovimento 			; Se for um tijolo movimento nao eh realizado
	; TAMBEM EH NECESSARIO VERIFICAR O CARACTERE ABAIXO!!! (O jogador tem dimensoes 2x2)
	add r4, r4, r2				; r4 = r4 + 40 ---> ponteiro para caractere desce uma linha
	loadi r3, r4 				; r3 = caractere do mapa de tijolos apontado por r4
	cmp r1, r3 					; Compara o caractere a direita e abaixo da posicao que o jogador quer ir com um tijolo
	jeq FinalizaMovimento 			; Se for um tijolo o movimento nao eh realizado
	
	; -- VERIFICACAO SE A POSICAO QUE QUER IR EH UM ESPINHO --
	loadn r1, #'?' 				; r1 = '?'  ---> auxiliar para comparar o caractere abaixo da nova posicao com um espinho
	loadn r4, #tijolosLinha0 	; r4 = ponteiro para o primeiro caractere do mapa de tijolos
	add r4, r4, r0 				; r4 = r4 + posJogador ---> ponteiro para o caractere do mapa de tijolos na posicao que o jogador quer ir
	add r4, r4, r2 				; r4 = r4 + 40 ---> ponteiro desce mais um porque o jogador eh 2x2
	loadi r3, r4				; r3 = caractere do mapa de tijolos na posicao abaixo da que o jogador quer ir
	cmp r1, r3 					; Compara o caractere na posicao abaixo da que o jogador quer ir com um espinho
	jeq jogadorPerdeu 			; Se for um espinho o jogador perde
	; TAMBEM EH NECESSARIO VERIFICAR O CARACTERE A DIREITA !!! (O jogador tem dimensoes 2x2)
	inc r4						; Ponteiro para caractere vai um para a direita
	loadi r3, r4 				; r3 = caractere na direita e abaixo da posicao que o jogador quer ir
	cmp r1, r3 					; Compara o caractere a direita e abaixo da posicao que o jogador quer ir com um espinho
	jeq jogadorPerdeu 			; Se for um espinho o jogador perde

	; -- VERIFICACAO SE A POSICAO QUE QUER IR EH UM TRAMPOLIM --
	loadn r1, #'w' 				; r1 = 'w'  ---> auxiliar para comparar o caractere abaixo da nova posicao com um trampolim
	loadn r4, #tijolosLinha0 	; r4 = ponteiro para o primeiro caractere do mapa de tijolos
	add r4, r4, r0 				; r4 = r4 + posJogador ---> ponteiro para o caractere do mapa de tijolos na posicao que o jogador quer ir
	add r4, r4, r2 				; r4 = r4 + 40 ---> ponteiro desce mais um porque o jogador eh 2x2
	loadi r3, r4				; r3 = caractere do mapa de tijolos na posicao abaixo da que o jogador quer ir
	cmp r1, r3 					; Compara o caractere na posicao abaixo da que o jogador quer ir com um trampolim
	jeq DOWN_jogador 			; Se for um trampolim o jogador perde
	; TAMBEM EH NECESSARIO VERIFICAR O CARACTERE A DIREITA !!! (O jogador tem dimensoes 2x2)
	inc r4						; Ponteiro para caractere vai um para a direita
	loadi r3, r4 				; r3 = caractere na direita e abaixo da posicao que o jogador quer ir
	cmp r1, r3 					; Compara o caractere a direita e abaixo da posicao que o jogador quer ir com um trampolim
	jeq DOWN_jogador 			; Se for um trampolim o jogador perde

	; -- VERIFICACAO SE A POSICAO QUE QUER IR EH UM TRAMPOLIM --
	loadn r1, #'x' 				; r1 = 'x'  ---> auxiliar para comparar o caractere abaixo da nova posicao com um trampolim
	loadn r4, #tijolosLinha0 	; r4 = ponteiro para o primeiro caractere do mapa de tijolos
	add r4, r4, r0 				; r4 = r4 + posJogador ---> ponteiro para o caractere do mapa de tijolos na posicao que o jogador quer ir
	add r4, r4, r2 				; r4 = r4 + 40 ---> ponteiro desce mais um porque o jogador eh 2x2
	loadi r3, r4				; r3 = caractere do mapa de tijolos na posicao abaixo da que o jogador quer ir
	cmp r1, r3 					; Compara o caractere na posicao abaixo da que o jogador quer ir com um trampolim
	jeq LEFT_jogador 			; Se for um trampolim o jogador perde
	; TAMBEM EH NECESSARIO VERIFICAR O CARACTERE A DIREITA !!! (O jogador tem dimensoes 2x2)
	inc r4						; Ponteiro para caractere vai um para a direita
	loadi r3, r4 				; r3 = caractere na direita e abaixo da posicao que o jogador quer ir
	cmp r1, r3 					; Compara o caractere a direita e abaixo da posicao que o jogador quer ir com um trampolim
	jeq LEFT_jogador 			; Se for um trampolim o jogador perde

	; -- VERIFICACAO SE A POSICAO QUE QUER IR EH UM TRAMPOLIM --
	loadn r1, #'y' 				; r1 = 'y'  ---> auxiliar para comparar o caractere abaixo da nova posicao com um trampolim
	loadn r4, #tijolosLinha0 	; r4 = ponteiro para o primeiro caractere do mapa de tijolos
	add r4, r4, r0 				; r4 = r4 + posJogador ---> ponteiro para o caractere do mapa de tijolos na posicao que o jogador quer ir
	add r4, r4, r2 				; r4 = r4 + 40 ---> ponteiro desce mais um porque o jogador eh 2x2
	loadi r3, r4				; r3 = caractere do mapa de tijolos na posicao abaixo da que o jogador quer ir
	cmp r1, r3 					; Compara o caractere na posicao abaixo da que o jogador quer ir com um trampolim
	jeq UP_jogador 			; Se for um trampolim o jogador perde
	; TAMBEM EH NECESSARIO VERIFICAR O CARACTERE A DIREITA !!! (O jogador tem dimensoes 2x2)
	inc r4						; Ponteiro para caractere vai um para a direita
	loadi r3, r4 				; r3 = caractere na direita e abaixo da posicao que o jogador quer ir
	cmp r1, r3 					; Compara o caractere a direita e abaixo da posicao que o jogador quer ir com um trampolim
	jeq UP_jogador 			; Se for um trampolim o jogador perde

	; -- PASSOU TODOS OS TESTES --
	storei r7, r0

	; -- Bloco de Animação --
	push r6 ; Salva r6 (&dirJogador) para não corrompê-lo
    loadn r6, #posJogadorAnt
    loadn r5, #dirJogador
    loadn r4, #dirJogadorAnt
    load r3, corJogador
    call AtualizaJogador
    call Delay
	pop r6 ; Restaura r6
	
	jmp RIGHT_jogador
;-------------------------------------------------------;
;                         DOWN JOGADOR
; Move um jogador para a baixo ate colidir
; <- r7 = endereco da posicao do jogador 
; <- r6 = endereco da direcao do jogador
DOWN_jogador:
	; Carrega a posicao do jogador em r0
	loadi r0, r7
	
	; Atualiza a direcao
	loadn r1, #8
	storei r6, r1 ; dirJogador = DOWN = 8
	
	; -- ATUALIZA POSICAO ATUAL EM r0 --
	loadn r1, #1076		; r1 = auxiliar para verificar se chegou na ultima linha
	loadn r2, #40 		; r2 = auxiliar para descer linha no mapa de tijolos
	add r0, r0, r2 		; pos = pos + 40 ---> desce uma linha no mapa de tijolos
	cmp r0, r1 			; Verifica se ja esta na ultima linha
	jgr FinalizaMovimento 	; Se ja estiver na ultima linha nao movimenta
	
	; -- VERIFICACAO SE A POSICAO QUE QUER IR EH UM TIJOLO --
	loadn r1, #'#' 				; r1 = '#'  ---> auxiliar para comparar o caractere abaixo da nova posicao com um tijolo
	loadn r4, #tijolosLinha0 	; r4 = ponteiro para o primeiro caractere do mapa de tijolos
	add r4, r4, r0 				; r4 = r4 + posJogador ---> ponteiro para o caractere do mapa de tijolos na posicao que o jogador quer ir
	add r4, r4, r2 				; r4 = r4 + 40 ---> ponteiro desce mais um porque o jogador eh 2x2
	loadi r3, r4				; r3 = caractere do mapa de tijolos na posicao abaixo da que o jogador quer ir
	cmp r1, r3 					; Compara o caractere na posicao abaixo da que o jogador quer ir com um tijolo
	jeq FinalizaMovimento 			; Se for um tijolo o movimento nao eh realizado
	; TAMBEM EH NECESSARIO VERIFICAR O CARACTERE A DIREITA !!! (O jogador tem dimensoes 2x2)
	inc r4						; Ponteiro para caractere vai um para a direita
	loadi r3, r4 				; r3 = caractere na direita e abaixo da posicao que o jogador quer ir
	cmp r1, r3 					; Compara o caractere a direita e abaixo da posicao que o jogador quer ir com um tijolo
	jeq FinalizaMovimento 			; Se for um tijolo o movimento nao eh realizado
	
	; -- VERIFICACAO SE A POSICAO QUE QUER IR EH UM ESPINHO --
	loadn r1, #'?' 				; r1 = '?'  ---> auxiliar para comparar o caractere abaixo da nova posicao com um espinho
	loadn r4, #tijolosLinha0 	; r4 = ponteiro para o primeiro caractere do mapa de tijolos
	add r4, r4, r0 				; r4 = r4 + posJogador ---> ponteiro para o caractere do mapa de tijolos na posicao que o jogador quer ir
	add r4, r4, r2 				; r4 = r4 + 40 ---> ponteiro desce mais um porque o jogador eh 2x2
	loadi r3, r4				; r3 = caractere do mapa de tijolos na posicao abaixo da que o jogador quer ir
	cmp r1, r3 					; Compara o caractere na posicao abaixo da que o jogador quer ir com um espinho
	jeq jogadorPerdeu 			; Se for um espinho o jogador perde
	; TAMBEM EH NECESSARIO VERIFICAR O CARACTERE A DIREITA !!! (O jogador tem dimensoes 2x2)
	inc r4						; Ponteiro para caractere vai um para a direita
	loadi r3, r4 				; r3 = caractere na direita e abaixo da posicao que o jogador quer ir
	cmp r1, r3 					; Compara o caractere a direita e abaixo da posicao que o jogador quer ir com um espinho
	jeq jogadorPerdeu 			; Se for um espinho o jogador perde

	; -- VERIFICACAO SE A POSICAO QUE QUER IR EH UM TRAMPOLIM --
	loadn r1, #'x' 				; r1 = 'x'  ---> auxiliar para comparar o caractere abaixo da nova posicao com um trampolim
	loadn r4, #tijolosLinha0 	; r4 = ponteiro para o primeiro caractere do mapa de tijolos
	add r4, r4, r0 				; r4 = r4 + posJogador ---> ponteiro para o caractere do mapa de tijolos na posicao que o jogador quer ir
	add r4, r4, r2 				; r4 = r4 + 40 ---> ponteiro desce mais um porque o jogador eh 2x2
	loadi r3, r4				; r3 = caractere do mapa de tijolos na posicao abaixo da que o jogador quer ir
	cmp r1, r3 					; Compara o caractere na posicao abaixo da que o jogador quer ir com um trampolim
	jeq LEFT_jogador 			; Se for um trampolim o jogador perde
	; TAMBEM EH NECESSARIO VERIFICAR O CARACTERE A DIREITA !!! (O jogador tem dimensoes 2x2)
	inc r4						; Ponteiro para caractere vai um para a direita
	loadi r3, r4 				; r3 = caractere na direita e abaixo da posicao que o jogador quer ir
	cmp r1, r3 					; Compara o caractere a direita e abaixo da posicao que o jogador quer ir com um trampolim
	jeq LEFT_jogador 			; Se for um trampolim o jogador perde

	; -- VERIFICACAO SE A POSICAO QUE QUER IR EH UM TRAMPOLIM --
	loadn r1, #'y' 				; r1 = 'y'  ---> auxiliar para comparar o caractere abaixo da nova posicao com um trampolim
	loadn r4, #tijolosLinha0 	; r4 = ponteiro para o primeiro caractere do mapa de tijolos
	add r4, r4, r0 				; r4 = r4 + posJogador ---> ponteiro para o caractere do mapa de tijolos na posicao que o jogador quer ir
	add r4, r4, r2 				; r4 = r4 + 40 ---> ponteiro desce mais um porque o jogador eh 2x2
	loadi r3, r4				; r3 = caractere do mapa de tijolos na posicao abaixo da que o jogador quer ir
	cmp r1, r3 					; Compara o caractere na posicao abaixo da que o jogador quer ir com um trampolim
	jeq UP_jogador 			; Se for um trampolim o jogador perde
	; TAMBEM EH NECESSARIO VERIFICAR O CARACTERE A DIREITA !!! (O jogador tem dimensoes 2x2)
	inc r4						; Ponteiro para caractere vai um para a direita
	loadi r3, r4 				; r3 = caractere na direita e abaixo da posicao que o jogador quer ir
	cmp r1, r3 					; Compara o caractere a direita e abaixo da posicao que o jogador quer ir com um trampolim
	jeq UP_jogador 			; Se for um trampolim o jogador perde

	; -- VERIFICACAO SE A POSICAO QUE QUER IR EH UM TRAMPOLIM --
	loadn r1, #'z' 				; r1 = 'z'  ---> auxiliar para comparar o caractere abaixo da nova posicao com um trampolim
	loadn r4, #tijolosLinha0 	; r4 = ponteiro para o primeiro caractere do mapa de tijolos
	add r4, r4, r0 				; r4 = r4 + posJogador ---> ponteiro para o caractere do mapa de tijolos na posicao que o jogador quer ir
	add r4, r4, r2 				; r4 = r4 + 40 ---> ponteiro desce mais um porque o jogador eh 2x2
	loadi r3, r4				; r3 = caractere do mapa de tijolos na posicao abaixo da que o jogador quer ir
	cmp r1, r3 					; Compara o caractere na posicao abaixo da que o jogador quer ir com um trampolim
	jeq RIGHT_jogador 			; Se for um trampolim o jogador perde
	; TAMBEM EH NECESSARIO VERIFICAR O CARACTERE A DIREITA !!! (O jogador tem dimensoes 2x2)
	inc r4						; Ponteiro para caractere vai um para a direita
	loadi r3, r4 				; r3 = caractere na direita e abaixo da posicao que o jogador quer ir
	cmp r1, r3 					; Compara o caractere a direita e abaixo da posicao que o jogador quer ir com um trampolim
	jeq RIGHT_jogador 			; Se for um trampolim o jogador perde
	
	; -- PASSOU TODOS OS TESTES --
	storei r7, r0

	; -- Bloco de Animação --
	push r6 ; Salva r6 (&dirJogador) para não corrompê-lo
    loadn r6, #posJogadorAnt
    loadn r5, #dirJogador
    loadn r4, #dirJogadorAnt
    load r3, corJogador
    call AtualizaJogador
    call Delay
	pop r6 ; Restaura r6

	jmp DOWN_jogador
;-------------------------------------------------------;
;                         LEFT JOGADOR
; Move um jogador para a esquerda ate colidir
; <- r7 = endereco da posicao do jogador 
; <- r6 = endereco da direcao do jogador
LEFT_jogador:	
	; Carrega a posicao do jogador em r0
	loadi r0, r7
	
	; Atualiza a direcao
	loadn r1, #12
	storei r6, r1 ; dirJogador = LEFT = 12
	
	; -- ATUALIZA POSICAO ATUAL EM r0 --
	loadn r1, #4 				; r1 = auxiliar para verificar se esta na primeira coluna
	loadn r2, #40 				; r2 = auxiliar para fazer mod
	dec r0 						; r0-- ---> Posicao vai um pra esquerda
	mod r3, r0, r2 				; r3 = pos % 40 ---> r3 = coluna
	cmp r3, r1 					; Verifica se ja esta na primeira coluna (coluna 4 por causa da margem)
	jle FinalizaMovimento 			; Se ja estiver na primeira coluna nao movimenta
	
	; -- VERIFICACAO SE A POSICAO QUE QUER IR EH UM TIJOLO --
	loadn r1, #'#'				; r1 = '#'  ---> auxiliar para comparar o caractere da nova posicao com um tijolo
	loadn r4, #tijolosLinha0 	; r4 = ponteiro para o primeiro caractere do mapa de tijolos
	add r4, r4, r0 				; r4 = r4 + posJogador ---> ponteiro para o caractere do mapa de tijolos na posicao que o jogador quer ir
	loadi r3, r4 				; r3 = caractere do mapa de tijolos apontado por r4
	cmp r1, r3 					; Compara o caractere na posicao que o jogador quer ir com um tijolo
	jeq FinalizaMovimento 			; Se for um tijolo movimento nao eh realizado
	; TAMBEM EH NECESSARIO VERIFICAR O CARACTERE ABAIXO!!! (O jogador tem dimensoes 2x2)
	add r4, r4, r2				; r4 = r4 + 40 ---> ponteiro para caractere desce uma linha
	loadi r3, r4 				; r3 = caractere abaixo da posicao que o jogador quer ir
	cmp r1, r3 					; Compara o caractere a abaixo da posicao que o jogador quer ir com um tijolo
	jeq FinalizaMovimento 			; Se for um tijolo o movimento nao eh realizado

	; -- VERIFICACAO SE A POSICAO QUE QUER IR EH UM ESPINHO --
	loadn r1, #'?' 				; r1 = '?'  ---> auxiliar para comparar o caractere abaixo da nova posicao com um espinho
	loadn r4, #tijolosLinha0 	; r4 = ponteiro para o primeiro caractere do mapa de tijolos
	add r4, r4, r0 				; r4 = r4 + posJogador ---> ponteiro para o caractere do mapa de tijolos na posicao que o jogador quer ir
	add r4, r4, r2 				; r4 = r4 + 40 ---> ponteiro desce mais um porque o jogador eh 2x2
	loadi r3, r4				; r3 = caractere do mapa de tijolos na posicao abaixo da que o jogador quer ir
	cmp r1, r3 					; Compara o caractere na posicao abaixo da que o jogador quer ir com um espinho
	jeq jogadorPerdeu 			; Se for um espinho o jogador perde
	; TAMBEM EH NECESSARIO VERIFICAR O CARACTERE A DIREITA !!! (O jogador tem dimensoes 2x2)
	inc r4						; Ponteiro para caractere vai um para a direita
	loadi r3, r4 				; r3 = caractere na direita e abaixo da posicao que o jogador quer ir
	cmp r1, r3 					; Compara o caractere a direita e abaixo da posicao que o jogador quer ir com um espinho
	jeq jogadorPerdeu 			; Se for um espinho o jogador perde

	; -- VERIFICACAO SE A POSICAO QUE QUER IR EH UM TRAMPOLIM --
	loadn r1, #'w' 				; r1 = 'w'  ---> auxiliar para comparar o caractere abaixo da nova posicao com um trampolim
	loadn r4, #tijolosLinha0 	; r4 = ponteiro para o primeiro caractere do mapa de tijolos
	add r4, r4, r0 				; r4 = r4 + posJogador ---> ponteiro para o caractere do mapa de tijolos na posicao que o jogador quer ir
	add r4, r4, r2 				; r4 = r4 + 40 ---> ponteiro desce mais um porque o jogador eh 2x2
	loadi r3, r4				; r3 = caractere do mapa de tijolos na posicao abaixo da que o jogador quer ir
	cmp r1, r3 					; Compara o caractere na posicao abaixo da que o jogador quer ir com um trampolim
	jeq DOWN_jogador 			; Se for um trampolim o jogador perde
	; TAMBEM EH NECESSARIO VERIFICAR O CARACTERE A DIREITA !!! (O jogador tem dimensoes 2x2)
	inc r4						; Ponteiro para caractere vai um para a direita
	loadi r3, r4 				; r3 = caractere na direita e abaixo da posicao que o jogador quer ir
	cmp r1, r3 					; Compara o caractere a direita e abaixo da posicao que o jogador quer ir com um trampolim
	jeq DOWN_jogador 			; Se for um trampolim o jogador perde

	; -- VERIFICACAO SE A POSICAO QUE QUER IR EH UM TRAMPOLIM --
	loadn r1, #'y' 				; r1 = 'y'  ---> auxiliar para comparar o caractere abaixo da nova posicao com um trampolim
	loadn r4, #tijolosLinha0 	; r4 = ponteiro para o primeiro caractere do mapa de tijolos
	add r4, r4, r0 				; r4 = r4 + posJogador ---> ponteiro para o caractere do mapa de tijolos na posicao que o jogador quer ir
	add r4, r4, r2 				; r4 = r4 + 40 ---> ponteiro desce mais um porque o jogador eh 2x2
	loadi r3, r4				; r3 = caractere do mapa de tijolos na posicao abaixo da que o jogador quer ir
	cmp r1, r3 					; Compara o caractere na posicao abaixo da que o jogador quer ir com um trampolim
	jeq UP_jogador 			; Se for um trampolim o jogador perde
	; TAMBEM EH NECESSARIO VERIFICAR O CARACTERE A DIREITA !!! (O jogador tem dimensoes 2x2)
	inc r4						; Ponteiro para caractere vai um para a direita
	loadi r3, r4 				; r3 = caractere na direita e abaixo da posicao que o jogador quer ir
	cmp r1, r3 					; Compara o caractere a direita e abaixo da posicao que o jogador quer ir com um trampolim
	jeq UP_jogador 			; Se for um trampolim o jogador perde

	; -- VERIFICACAO SE A POSICAO QUE QUER IR EH UM TRAMPOLIM --
	loadn r1, #'z' 				; r1 = 'z'  ---> auxiliar para comparar o caractere abaixo da nova posicao com um trampolim
	loadn r4, #tijolosLinha0 	; r4 = ponteiro para o primeiro caractere do mapa de tijolos
	add r4, r4, r0 				; r4 = r4 + posJogador ---> ponteiro para o caractere do mapa de tijolos na posicao que o jogador quer ir
	add r4, r4, r2 				; r4 = r4 + 40 ---> ponteiro desce mais um porque o jogador eh 2x2
	loadi r3, r4				; r3 = caractere do mapa de tijolos na posicao abaixo da que o jogador quer ir
	cmp r1, r3 					; Compara o caractere na posicao abaixo da que o jogador quer ir com um trampolim
	jeq RIGHT_jogador 			; Se for um trampolim o jogador perde
	; TAMBEM EH NECESSARIO VERIFICAR O CARACTERE A DIREITA !!! (O jogador tem dimensoes 2x2)
	inc r4						; Ponteiro para caractere vai um para a direita
	loadi r3, r4 				; r3 = caractere na direita e abaixo da posicao que o jogador quer ir
	cmp r1, r3 					; Compara o caractere a direita e abaixo da posicao que o jogador quer ir com um trampolim
	jeq RIGHT_jogador 			; Se for um trampolim o jogador perde
	
	; -- PASSOU TODOS OS TESTES --
	storei r7, r0

	; -- Bloco de Animação --
	push r6 ; Salva r6 (&dirJogador) para não corrompê-lo
    loadn r6, #posJogadorAnt
    loadn r5, #dirJogador
    loadn r4, #dirJogadorAnt
    load r3, corJogador
    call AtualizaJogador
    call Delay
	pop r6 ; Restaura r6

	jmp LEFT_jogador
;		     	FIM UP_RIGHT_DOWN_LEFT JOGADOR
;-------------------------------------------------------;

jogadorGanhou:
	loadn r1, #0
	loadn r2, #20

loop_jogadorGanhou:
	call Delay
	inc r1
	cmp r1, r2
	jle loop_jogadorGanhou
	call ApagaTela
	call ImprimeJogadorGanhou
	call jogar_novamente
	jmp main

jogadorPerdeu:
	loadn r1, #0
	loadn r2, #20

loop_jogadorPerdeu:
	call Delay
	inc r1
	cmp r1, r2
	jle loop_jogadorPerdeu
	call ApagaTela
	call ImprimeJogadorPerdeu
	call jogar_novamente
	jmp main

	
jogar_novamente:
	loadn r2, #' '
loop_jogarNovamente:
	inchar r1
	cmp r2, r1
	jne loop_jogarNovamente
	rts

;========================================================;
;                       APAGA TELA                       
ApagaTela:
	push r0  
	push r1
	
	loadn r0, #1200		; apaga as 1200 posicoes da Tela
	loadn r1, #' '		; com "espaco"
	
	   ApagaTela_Loop:	
		dec r0
		outchar r1, r0
		jnz ApagaTela_Loop
 
	pop r1
	pop r0
	rts
;                      FIM APAGA TELA                       
;========================================================;

;========================================================;
;                     IMPRIME BATTLE CITY      
ImprimeTombOfMask:
	; Esta é uma função wrapper, não precisa salvar/restaurar seus parâmetros
	loadn r1, #tombofmaskLinha0
	loadn r2, #256 ; cor = Marrom
	call ImprimeTela
	rts
;                   FIM IMPRIME BATTLE CITY      
;========================================================;

;========================================================;
;                     IMPRIME TELA INICIAL      
ImprimeTelaInicial:
	; Esta é uma função wrapper, não precisa salvar/restaurar seus parâmetros
	loadn r1, #telaInicialLinha0
	loadn r2, #0 ; cor = BRANCO
	call ImprimeTela
	rts
;                   FIM IMPRIME TELA INICIAL       
;========================================================;

;========================================================;
;                     IMPRIME TELA      
;
; <- r1 = ponteiro para a primeira linha da tela 
; <- r2 = cor da tela           
ImprimeTela:
	; PUSH/POP removido pois a função que a chama não precisa que os registradores sejam preservados.
	; A função chamada (ImprimeLinha) preserva os registradores que ela usa.
	loadn r0, #0  	; posicao inicial tem que ser o comeco da tela!
	loadn r3, #40  	; Incremento da posicao da tela!
	loadn r4, #1200 ; Limite da tela!
	
loop_imprimeTela:
	call ImprimeLinha
	add r0, r0, r3  	; incrementaposicao para a segunda linha na tela -->  r0 = r0 + 40
	add r1, r1, r3  	; incrementa o ponteiro para o comeco da proxima linha na memoria r1 = r1 + 40
	cmp r0, r4			; Compara r0 com 1200
	jne loop_imprimeTela	; Enquanto r0 < 1200
	
	rts
;                   FIM IMPRIME TELA                   
;=====================================ImprimeJogadorPerdeu
;========================================================;
;			    IMPRIME LINHA SEM ESPACO           
;     
; Imprime uma string de 39 caracteres e repete o último caractere
;
; <- r0 = Posicao de inicio da impressao
; <- r1 = Endereco da string que sera impressa
; <- r2 = Cor da impressao
ImprimeLinha:
	; PUSH/POP são necessários aqui pois a função que a chama (ImprimeTela) continua usando r0, r1, etc.
	push r0
	push r1
	push r2
	push r3
	push r4
	push r5
	push r6
	
	; Carrega 38 em r4 para condicao de parada
	loadn r4, #38
	; r5 = contador
	loadn r5, #0
	; Carrega ' ' em r6 para saber se imprime o caractere ou nao
	loadn r6, #' '
	
loop_imprimeLinha:

	loadi r3, r1 ; carrega em r3 o valor do caractere apontado por r1
	cmp r3, r6	 ; compara r3 com ' ' se for igual -> não imprime o caractere
	jeq continua_imprimeLinha
	
	; Verifica se o caractere eh especial ('q','r','s','t') para nao colorir
	push r6 ; Salva r6 (' ') para usar no teste

	loadn r6, #'q'
	cmp r3, r6
	jeq pula_cor_margem

	loadn r6, #'r'
	cmp r3, r6
	jeq pula_cor_margem

	loadn r6, #'s'
	cmp r3, r6
	jeq pula_cor_margem

	loadn r6, #'t'
	cmp r3, r6
	jeq pula_cor_margem

	; Se nao for nenhum dos caracteres especiais, adiciona a cor
	add r3, r2, r3

pula_cor_margem:
	pop r6 ; Restaura o valor original de r6
	outchar r3, r0 ; Imprime o caractere (com ou sem cor)

	; nops para nao bugar a impressao (impressoes sucessivas levam a erros na impressao)
	nop
	nop
	nop
	nop
	nop
	nop
continua_imprimeLinha:
	; anda com a posicao da impressao
	inc r0
	
	cmp r5, r4 ; compara o contador com 38
	inc r5 ; contador ++
	
	jeq loop_imprimeLinha ; se for o caractere 39 (contador == 38), volta no loop sem andar no vetor
	
	; se nao for o caractere 39, anda no vetor
	inc r1
	
	cmp r5, r4 ; compara o contador com 38
	jel loop_imprimeLinha ; soh volta no loop se for menor ou igual a 38
	
	; Desempliha registradores
	pop r6
	pop r5
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	rts
;	          FIM IMPRIME String SEM ESPACO              
;========================================================;

;========================================================;
;                     IMPRIME MARGEM      
ImprimeMargem:
	; Esta é uma função wrapper, não precisa salvar/restaurar seus parâmetros
	loadn r1, #margemLinha0
	loadn r2, #256 ; cor = amarela
	call ImprimeTela
	rts
;                   FIM IMPRIME MARGEM      
;========================================================;

;========================================================;
;                     IMPRIME TIJOLOS      
ImprimeTijolos:
	; Esta é uma função wrapper, não precisa salvar/restaurar seus parâmetros
	loadn r1, #tijolosLinhaStatic0
	loadn r2, #256 ; cor = amarela
	call ImprimeTelaTijolos
	rts
;                   FIM IMPRIME TIJOLOS      
;========================================================;

;========================================================;
;						  DELAY
Delay:
	; Empilha registradores para nao perder seus valores
	push r0
	push r1
	
	loadn r0, #60
loop_delay1:
	loadn r1, #300
loop_delay2:
	dec r1
	jnz loop_delay2
	dec r0
	jnz loop_delay1
	
	pop r1
	pop r0
	rts
;						FIM DELAY
;========================================================;

;========================================================;
;                     IMPRIME TELA TIJOLOS
;
; <- r1 = ponteiro para a primeira linha da tela 
; <- r2 = cor da tela           
ImprimeTelaTijolos:
	; PUSH/POP removido pois a função que a chama não precisa que os registradores sejam preservados.
	loadn r0, #0  	; posicao inicial tem que ser o comeco da tela!
	loadn r3, #40  	; Incremento da posicao da tela!
	loadn r4, #1200 ; Limite da tela!
	loadn r7, #tijolosLinha0
	
loop_imprimeTelaTijolos:
	call ImprimeLinhaTijolos
	add r0, r0, r3  	; incrementaposicao para a segunda linha na tela -->  r0 = r0 + 40
	add r1, r1, r3  	; incrementa o ponteiro para o comeco da proxima linha na memoria r1 = r1 + 40
	add r7, r7, r3  	; incrementa o ponteiro para o comeco da proxima linha na memoria r1 = r1 + 40
	cmp r0, r4			; Compara r0 com 1200
	jne loop_imprimeTelaTijolos	; Enquanto r0 < 1200
	
	rts
;                   FIM IMPRIME TELA TIJOLOS
;========================================================;

;========================================================;
;			    IMPRIME LINHA TIJOLOS
;     
; Imprime uma string de 39 caracteres e repete o último caractere
;
; <- r0 = Posicao de inicio da impressao
; <- r1 = Endereco da string que sera impressa
; <- r2 = Cor da impressao
; <- r7 = Linha dos tijolos nao static
ImprimeLinhaTijolos:
	; PUSH/POP são necessários aqui pois a função que a chama (ImprimeTelaTijolos) continua usando os registradores
	push r0
	push r1
	push r2
	push r3
	push r4
	push r5
	push r6
	push r7
	
	; Carrega 38 em r4 para condicao de parada
	loadn r4, #38
	; r5 = contador
	loadn r5, #0
	; Carrega ' ' em r6 para saber se imprime o caractere ou nao
	loadn r6, #' '
	
loop_imprimeLinhaTijolos:

	loadi r3, r1 ; carrega em r3 o valor do caractere apontado por r1
	storei r7, r3
	cmp r3, r6	 ; compara r3 com ' ' se for igual -> não imprime o caractere
	jeq continua_imprimeLinhaTijolos
	
	; Verifica se o caractere eh um espinho ('?') para nao colorir
	push r6 ; Salva r6 (' ') para usar no teste
	loadn r6, #'?' ; Carrega o caractere de espinho
	cmp r3, r6     ; Compara o caractere atual com o espinho
	pop r6 ; Restaura r6
	jeq imprime_char_tijolos ; Se for '?', pula a adicao de cor
	
	add r3, r2, r3 ; adiciona a cor da linha (amarela)

imprime_char_tijolos:
	outchar r3, r0 ; imprime o caractere (com ou sem cor adicionada)

	; nops para nao bugar a impressao (impressoes sucessivas levam a erros na impressao)
	nop
	nop
	nop
	nop
	nop
	nop
continua_imprimeLinhaTijolos:
	; anda com a posicao da impressao
	inc r0
	
	cmp r5, r4 ; compara o contador com 38
	inc r5 ; contador ++
	
	jeq loop_imprimeLinhaTijolos ; se for o caractere 39 (contador == 38), volta no loop sem andar no vetor
	
	; se nao for o caractere 39, anda no vetor
	inc r1
	inc r7
	
	cmp r5, r4 ; compara o contador com 38
	jel loop_imprimeLinhaTijolos ; soh volta no loop se for menor ou igual a 38
	
	; Desempliha registradores
	pop r7
	pop r6
	pop r5
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	rts
;	          FIM IMPRIME LINHA TIJOLOS
;========================================================;

;========================================================;
;                     IMPRIME TELA INICIAL      
ImprimeJogadorGanhou:
	; Empilha registradores para preservar seus valores
	push r1
	push r2
	
	; Impressao dos tijolos
	loadn r1, #jogadorGanhouLinha0
	loadn r2, #0 ; cor = BRANCO
	call ImprimeTela
	
	; Desempilha registradores
	pop r2
	pop r1
	
	rts
;                   FIM IMPRIME TELA INICIAL       
;========================================================;
;========================================================;
;                     IMPRIME TELA INICIAL      
ImprimeJogadorPerdeu:
	; Empilha registradores para preservar seus valores
	push r1
	push r2
	
	; Impressao dos tijolos
	loadn r1, #jogadorPerdeuLinha0
	loadn r2, #0 ; cor = BRANCO
	call ImprimeTela
	
	; Desempilha registradores
	pop r2
	pop r1
	
	rts
;                   FIM IMPRIME TELA INICIAL       
;========================================================;