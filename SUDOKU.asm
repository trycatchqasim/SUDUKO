	[org 0x0100]
	jmp Start
	
	;=======================START SCREEN========================
	line: db '-------------'
	dash: db 0xb3,'   ',0xb3,'   ',0xb3,'   ',0xb3
	linelen: dw 13
	startline: db 'Press S to Start the Game'
	startlinelen: dw 25
	Intro: db 'By: Qasim Shakil and Maryam Batool'
	Introlen: dw 34
	
	lengtE: dw 27
	lengthE: dw 21
	length2E: dw 24
	length1E: dw 27
	startingE: dw 0
	
	win: dw 0
	
	;================== Ending SCreen Var ====================
	
	
	se1: db 'Press R to restart the Game'
	se2: db 'Press E to exit the Game'
	
	se3: db 0xdb,0xff,0xff,0xff,0xff,0xff,0xdb,0xff,0xff,0xdb,0xdb,0xdb,0xff,0xff,0xff,0xdb,0xff,0xff,0xff,0xff,0xdb
	se4: db 0xff,0xdb,0xff,0xff,0xff,0xdb,0xff,0xff,0xdb,0xff,0xff,0xff,0xdb,0xff,0xff,0xdb,0xff,0xff,0xff,0xff,0xdb
	se5: db 0xff,0xff,0xdb,0xff,0xdb,0xff,0xff,0xff,0xdb,0xff,0xff,0xff,0xdb,0xff,0xff,0xdb,0xff,0xff,0xff,0xff,0xdb
	se6: db 0xff,0xff,0xff,0xdb,0xff,0xff,0xff,0xff,0xdb,0xff,0xff,0xff,0xdb,0xff,0xff,0xdb,0xff,0xff,0xff,0xff,0xdb
	se7: db 0xff,0xff,0xff,0xdb,0xff,0xff,0xff,0xff,0xff,0xdb,0xdb,0xdb,0xff,0xff,0xff,0xff,0xdb,0xdb,0xdb,0xdb,0xff

    se8: db 0xdb,0xff,0xff,0xff,0xff,0xff,0xdb,0xff,0xff,0xdb,0xdb,0xdb,0xff,0xff,0xdb,0xdb,0xff,0xff,0xff,0xff,0xdb
	se9: db 0xdb,0xff,0xff,0xff,0xff,0xff,0xdb,0xff,0xdb,0xff,0xff,0xff,0xdb,0xff,0xdb,0xff,0xdb,0xff,0xff,0xff,0xdb
	se10: db 0xdb,0xff,0xff,0xdb,0xff,0xff,0xdb,0xff,0xdb,0xff,0xff,0xff,0xdb,0xff,0xdb,0xff,0xff,0xdb,0xff,0xff,0xdb
	se11: db 0xdb,0xff,0xdb,0xff,0xdb,0xff,0xdb,0xff,0xdb,0xff,0xff,0xff,0xdb,0xff,0xdb,0xff,0xff,0xff,0xdb,0xff,0xdb
	se12: db 0xff,0xdb,0xff,0xff,0xff,0xdb,0xff,0xff,0xff,0xdb,0xdb,0xdb,0xff,0xff,0xdb,0xff,0xff,0xff,0xff,0xdb,0xdb
	
	se13: db 0xdb,0xdb,0xdb,0xdb,0xdb,0xdb,0xff,0xff,0xff,0xdb,0xdb,0xff,0xff,0xff,0xdb,0xdb,0xff,0xff,0xff,0xdb,0xdb,0xff,0xdb,0xdb,0xdb,0xdb,0xdb
	se14: db 0xdb,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xdb,0xff,0xff,0xdb,0xff,0xff,0xdb,0xff,0xdb,0xff,0xdb,0xff,0xdb,0xff,0xdb,0xff,0xff,0xff,0xff
	se15: db 0xdb,0xff,0xff,0xdb,0xdb,0xdb,0xff,0xdb,0xff,0xff,0xff,0xff,0xdb,0xff,0xdb,0xff,0xff,0xdb,0xff,0xff,0xdb,0xff,0xdb,0xdb,0xdb,0xdb,0xdb
	se16: db 0xdb,0xff,0xff,0xff,0xff,0xdb,0xff,0xdb,0xdb,0xdb,0xdb,0xdb,0xdb,0xff,0xdb,0xff,0xff,0xff,0xff,0xff,0xdb,0xff,0xdb,0xff,0xff,0xff,0xff
	se17: db 0xdb,0xdb,0xdb,0xdb,0xdb,0xdb,0xff,0xdb,0xff,0xff,0xff,0xff,0xdb,0xff,0xdb,0xff,0xff,0xff,0xff,0xff,0xdb,0xff,0xdb,0xdb,0xdb,0xdb,0xdb
	
	
	se18: db 0xff,0xdb,0xdb,0xdb,0xff,0xff,0xff,0xdb,0xff,0xff,0xff,0xff,0xdb,0xff,0xdb,0xdb,0xdb,0xdb,0xdb,0xff,0xff,0xdb,0xdb,0xdb,0xdb,0xdb,0xdb
	se19: db 0xdb,0xff,0xff,0xff,0xdb,0xff,0xff,0xdb,0xff,0xff,0xff,0xff,0xdb,0xff,0xdb,0xff,0xff,0xff,0xff,0xff,0xff,0xdb,0xff,0xff,0xff,0xff,0xdb
	se20: db 0xdb,0xff,0xff,0xff,0xdb,0xff,0xff,0xdb,0xff,0xff,0xff,0xff,0xdb,0xff,0xdb,0xdb,0xdb,0xdb,0xdb,0xff,0xff,0xdb,0xdb,0xdb,0xdb,0xdb,0xdb
	se21: db 0xdb,0xff,0xff,0xff,0xdb,0xff,0xff,0xff,0xdb,0xff,0xff,0xdb,0xff,0xff,0xdb,0xff,0xff,0xff,0xff,0xff,0xff,0xdb,0xff,0xff,0xff,0xdb,0xff
	se22: db 0xff,0xdb,0xdb,0xdb,0xff,0xff,0xff,0xff,0xff,0xdb,0xdb,0xff,0xff,0xff,0xdb,0xdb,0xdb,0xdb,0xdb,0xff,0xff,0xdb,0xff,0xff,0xff,0xff,0xdb
	
	
	
	boradLine1: db 0xDA, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC2, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC2, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC2, 0xC2, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC2, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC2, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC2, 0xC2, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC2, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC2, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xBF,0  
	boradLine2: db 0xB3, 0x20, 0xFF, 0xFF, 0xFF, 0x20, 0xB3, 0x20, 0xFF, 0xFF, 0xFF, 0x20, 0xB3, 0x20, 0xFF, 0xFF, 0xFF, 0x20, 0xB3, 0xB3, 0x20, 0xFF, 0xFF, 0xFF, 0x20, 0xB3, 0x20, 0xFF, 0xFF, 0xFF, 0x20, 0xB3, 0x20, 0xFF, 0xFF, 0xFF, 0x20, 0xB3, 0xB3, 0x20, 0xFF, 0xFF, 0xFF, 0x20, 0xB3, 0x20, 0xFF, 0xFF, 0xFF, 0x20, 0xB3, 0x20, 0xFF, 0xFF, 0xFF, 0x20, 0xB3,0
	boardLine3: db 0xC3, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC5, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC5, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xB4, 0xC3, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC5, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC5, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xB4, 0xC3, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC5, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC5, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xB4,0
	boardLine4: db 0xC6, 0xCD, 0xCD, 0xCD, 0xCD, 0xCD, 0xD8, 0xCD, 0xCD, 0xCD, 0xCD, 0xCD, 0xD8, 0xCD, 0xCD, 0xCD, 0xCD, 0xCD, 0xD8, 0xD8, 0xCD, 0xCD, 0xCD, 0xCD, 0xCD, 0xD8, 0xCD, 0xCD, 0xCD, 0xCD, 0xCD, 0xD8, 0xCD, 0xCD, 0xCD, 0xCD, 0xCD, 0xD8, 0xD8, 0xCD, 0xCD, 0xCD, 0xCD, 0xcD, 0xD8, 0xCD, 0xCD, 0xCD, 0xCD, 0xCD, 0xD8, 0xCD, 0xCD, 0xCD, 0xCD, 0xCD, 0xB5,0
	boardLine5: db 0xC0, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC1, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC1, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC1, 0xC1, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC1, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC1, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC1, 0xC1, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC1, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xC1, 0xC4, 0xC4, 0xC4, 0xC4, 0xC4, 0xD9,0  
	; Total Length of each Board Array is 57

	; ====== Side panel Var ==================
	Scorestr: db 0xBA,0xff,'SCORE',0xff,0xBA,0
	boxline1: db 0xC9,0xcd,0xcd,0xcd,0xcd,0xcd,0xcd,0xcd,0xBB,0
	boxline2: db 0xC8,0xcd,0xcd,0xcd,0xcd,0xcd,0xcd,0xcd,0xBC,0
	Scorenum: dw 0
	Timestr: db 0xBA,0xff,'TIMER',0xff,0xBA,0
	livestr:db 0xBA,0xff,'LIVES',0xff,0xBA,0
	Miststr: db 'lives 0/3',0
	livescounter: db 2
	notestr: db 'NOTE -> ', 0	;notestr len = 8
	undostr: db 'UNDO -> Z', 0	;undostr len = 9
	noteon: db 'ON ', 0		; Notes On/Off position is 791
	noteoff: db 'OFF', 0
	noteStat: dw 1
	
	
	cardstr:db 'CARDS',0

	numCard1:db 49,32,32,32,32,50,32,32,32,32,51,0
	numCard2:db 52,32,32,32,32,53,32,32,32,32,54,0
	numCard3:db 55,32,32,32,32,56,32,32,32,32,57,0
	; ==============  Timer Variable  ====================
	oldISR: dw 0,0
	gameover: dw 0
	minute: dw 0
	second: dw 0
	tickcounter: dw 0
	
	; ==============  Scrolling Variable  ====================
	
	isscrollup: dw 0
	isscrolldown: dw 1;
	
	; ==============  Direction Variable  ====================
	
	Rightcount: dw 0;
	Downcount: dw 0;
	Boxcount: dw 0;
	
	; ==============  Direction Variable  ====================
	Initial_Row: dw 0
	Initial_Col: dw 0
	Initial_Box: dw 0
	Note_flag: dw 0
	
	
	; ==============  Win & Mis Variable  ====================
	
	Mistake:dw 0
	Winning: dw 0
	Undoarr:db 0 ,0 ,0, 0

	;=================== Initial Board And Solution ====================
	Structure1: db 0x31,   32, 0x37,   32, 0x32, 0x38, 0x39,   32,   32,   32,32,0x39,0x31,0x36,0x34,0x33,0x37,32,0x32,32,0x34,0x37,0x35,0x39,0x38,32,32,32,0x35,0x33,32,32,0x36,32,0x38,32,32,32,0x36,32,0x38,32,32,32,0x39,32,0x34,32,0x39,32,32,32,0x32,0x37,0x36,32,32,0x38,0x31,0x33,0x37,32,0x34,0x33,0x31,32,0x36,0x34,0x37,32,32,0x38,0x34,32,32,0x35,0x39,32,0x31,32,0x33

	Struct1Sol: db 0x31, 0x36, 0x37, 0x33, 0x32, 0x38, 0x39, 0x34, 0x35, 0x35, 0x38, 0x39, 0x31, 0x36, 0x34, 0x33, 0x37, 0x32, 0x32, 0x33, 0x34, 0x37, 0x35, 0x39, 0x38, 0x31, 0x36, 0x39, 0x35, 0x33, 0x32, 0x37, 0x36, 0x34, 0x38, 0x31, 0x37, 0x32, 0x36, 0x34, 0x38, 0x31, 0x35, 0x33, 0x39, 0x38, 0x34, 0x31, 0x39, 0x33, 0x35, 0x36, 0x32, 0x37, 0x36, 0x39, 0x32, 0x38, 0x31, 0x33, 0x37, 0x35, 0x34, 0x33, 0x31, 0x35, 0x36, 0x34, 0x37, 0x32, 0x39, 0x38, 0x34, 0x37, 0x38, 0x35, 0x39, 0x32, 0x31, 0x36, 0x33
    
	;================end of variables===============
	
	
	printstrE:
		push bp
		mov bp,sp
		push es
		push ax
		push cx
		push si
		push di
		mov ax,0xb800
		mov es,ax
		mov di,[bp+6]
		mov si,[bp+10]
		mov cx,[bp+8]
		mov ah,[bp+4]        
		
		

		nextcharstrE:
			mov al,[si]
			mov [es:di],ax
			add di,2
			add si,1
		loop nextcharstrE
		pop di
		pop si
		pop cx
		pop ax
		pop es
		pop bp
		ret 8
	
	
	
	
	
	StartingScrfunc:
		mov ax,line
		push ax
		push word[linelen]
		mov di,388
		push di
		
		call PrintBox
		mov ax,dash
		push ax
		push word[linelen]
		mov di,548
		push di
		
		call PrintBox
		mov ax,line
		push ax
		push word[linelen]
		mov di,708
		push di
		
		call PrintBox
		mov ax,dash
		push ax
		push word[linelen]
		mov di,868
		push di
		
		call PrintBox
		mov ax,line
		push ax
		push word[linelen]
		mov di,1028
		push di
		
		call PrintBox
		mov ax,dash
		push ax
		push word[linelen]
		mov di,1188
		push di
		
		call PrintBox
		mov ax,line
		push ax
		push word[linelen]
		mov di,1348
		push di
		
		call PrintBox
		mov ax,0xb800
		mov es,ax
		mov di,552
		mov word [es:di],0x0953
		mov di,560
		mov word [es:di],0x0e55
		mov di,880
		mov word [es:di],0x0d44
		mov  di,888
		mov word [es:di],0x0a4F
		mov di,1192
		mov word [es:di],0x0b4B
		mov di,1200
		mov word [es:di],0x0c55
		mov ax,startline
		push ax
		push word [startlinelen]
		mov di,3096
		push di
		
		call Printfirstline
		mov ax,Intro
		push ax
		push word [Introlen]
		mov di,2126
		push di
		
		call PrintSecline
		
	ret
	
	Printfirstline:
		push bp
		mov bp,sp
		push es
		push ax
		push cx
		push si
		push di
		mov ax,0xb800
		mov es,ax
		mov di,[bp+4]
		mov si,[bp+8]
		mov cx,[bp+6]
		mov ah,0x9b
		nextcharloop:
			mov al,[si]
			mov [es:di],ax
			add di,2
			add si,1
			loop nextcharloop
		pop di
		pop si
		pop cx
		pop ax
		pop es
		pop bp
	ret 6

	PrintSecline:
		push bp
		mov bp,sp
		push es
		push ax
		push cx
		push si
		push di
		mov ax,0xb800
		mov es,ax
		mov di,[bp+4]
		mov si,[bp+8]
		mov cx,[bp+6]
		mov ah,0x0c
		nextstartline:
			mov al,[si]
			mov [es:di],ax
			add di,2
			add si,1
			loop nextstartline
		pop di
		pop si
		pop cx
		pop ax
		pop es
		pop bp
	ret 6
	
	PrintBox:
		push bp
		mov bp,sp
		push es
		push ax
		push cx
		push si
		push di
		mov ax,0xb800
		mov es,ax
		mov di,[bp+4]
		mov si,[bp+8]
		mov cx,[bp+6]
		mov ah,0x0f
		nextchhar:
			mov al,[si]
			mov [es:di],ax
			add di,2
			add si,1
			loop nextchhar
		pop di
		pop si
		pop cx
		pop ax
		pop es
		pop bp
	ret 6
	
	
	
	
	;=================== Clear screen function =========================
	clrscr:
		push bp
		mov bp,sp
		push ax
		push es
		push di
		mov ax, 0xb800
		mov es, ax
		mov di, 0
		nextcharClrscr:
			mov word [es:di], 0x0020    
			add di, 2
			cmp di, 4000
		jne nextcharClrscr
		pop di
		pop es
		pop ax
		pop bp
	ret
	;====================================================================
	
	;=================== Lenght Cal function ==========================

	strlen:
		push bp
		mov bp,sp
		push es
		push cx
		push di
		 
		les di,[bp+4]
		mov cx,0xFFFF
		xor al,al
		repne scasb
		mov ax,0xFFFF
		sub ax,cx
		dec ax
		 
		pop di
		pop cx
		pop es
		pop bp 
	ret 4

	;====================================================================

	
	
	;=================== Display String function =========================

	
	 ;subroutine to print a string 
	 DisplayString:
		push bp
		mov bp,sp
		push es
		push ax
		push cx
		push si
		push di
		push ds
		 
		mov ax,[bp+4]
		push ax
		call strlen
		cmp ax,0
		jz exit
		mov cx,ax
		mov ax,0xb800
		mov es,ax
		mov al,80
		mul byte[bp+8]
		add ax,[bp+10]
		shl ax,1
		mov di,ax
		mov si,[bp+4]
		mov ah,[bp+6]
		cld
		nextchar:
		lodsb
		stosw
		loop nextchar
	 
		exit:
			pop di
			pop si
			pop cx
			pop ax
			pop es
			pop bp

	ret 8
	;====================================================================

	;=================== Scrolling function =========================

	scrollup:
		 push es
		 push ds
		 push ax
		 push bx
		 push cx
		 push dx
		 push si
		 push di
		 
		 mov bx,0
		 upscrollloop:
			 mov ax,80
			 mov dl,16     ; number of rows to scroll
			 mul dl
			 add ax,0       ;starting column
			 mov si,ax
			 shl si,1
			 mov cx, 3200   ; total screen 
			 sub cx,ax
			 mov ax,0xb800
			 mov es,ax
			 mov ds,ax
			 mov di,0     ; starting address of the destination
			 mov dx,0
			 cld 
			 cmp bx,1
			 je loopup
			 mov di,8000
			 mov cx,960     ;number of words to save
			 mov si,0       ;starting address of the destination
			 loopup:
			 movsw
			 inc dx
			 cmp dx,60  ;number of word per row(to move)
			 jne SkiprowInc
			 xor dx, dx           ; Reset column counter
			 cmp bx,0
			 je skipdestinc
			 add di, 40          ; Move di to the start of the next row
			 skipdestinc: 
			 add si, 40         ; Move si to the start of the next row
			 SkiprowInc: 
			 loop loopup
			 inc bx
			 cmp bx,1
			 je upscrollloop 
			cld	
			mov di, 3840    ;(number_of_last_row_start)
			mov cx, 1200   ; Clear the last rows with spaces
			mov ax, 0x0720
			rep stosw
		
		pop di
		pop si
		pop dx
		pop cx
		pop ax
		pop ax
		pop ds
		pop es		
	ret 
		 
	;subroutine to scroll down
	 scrolldown:
		push es
		push ds
		push ax
		push bx
		push cx
		push dx
		push si
		push di	
		mov ax,80
		mov dl,16 ; number of rows to scroll
		mul dl
		shl ax,1
		mov si,6398 ;total number of word in the screen - 2
		sub si,40 ;(80 - starting index of the row - number of words per row(to move) ) * 2
		sub si,ax
		mov cx, 3200 ; total screen 
		shr ax,1
		sub cx,ax  ;count of words to move
		mov ax,0xb800
		mov es,ax
		mov ds,ax
		mov di,6398 ;total words per screen - 2
		sub di,40 ;(80 - starting index of the row - number of words per row(to move) ) * 2
		mov dx,0 
		std 
		 
		loopdown:
			movsw
			inc dx
			cmp dx, 60
		jne skipprowInc
		
		xor dx, dx           ; Reset column counter
		sub di, 40          ; Move di to the start of the next row
		sub si, 40          ; Move di to the start of the next row
		
		skipprowInc: 
		loop loopdown
		;printing data from label up
		cld
		mov cx,960 ;number of words that was scrolledup
		mov ax,0xb800
		mov es,ax
		mov di,0 ;loading destination (starting index)
		mov si,8000 ;loading source(label up)
		xor dx, dx 
		prinloopup:
			movsw
			inc dx
			cmp dx, 60           ;number of words per row
		jne skipprowinc
		
		xor dx, dx           ; Reset column counter
		add di, 40          ; Move di to the start of the next row
		skipprowinc: 
		loop prinloopup 
		pop di
		pop si
		pop dx
		pop cx
		pop ax
		pop ax
		pop ds
		pop es
	ret 
	
	
	;====================================================================

	;=================== Printing Board function ========================

	DisplayBoard:
		push ax
		push bx

		call clrscr

		mov ax,3	; Number of Starting column for Board
		push ax
		mov bx,2	; Number of Starting Row for Board
		push bx
		add bx,1
		mov ax,0x0D
		push ax
		mov ax,boradLine1
		push ax
		call DisplayString
		;Starting of First Box
		mov ax,3
		push ax
		push bx
		add bx,1
		mov ax,0x0D
		push ax
		mov ax,boradLine2
		push ax
		call DisplayString

		mov ax,3
		push ax
		push bx
		add bx,1
		mov ax,0x0D
		push ax
		mov ax,boradLine2
		push ax
		call DisplayString

		mov ax,3
		push ax
		push bx
		add bx,1
		mov ax,0x0D
		push ax
		mov ax,boradLine2
		push ax
		call DisplayString

		mov ax,3
		push ax
		push bx
		add bx,1
		mov ax,0x0D
		push ax
		mov ax,boardLine3
		push ax
		call DisplayString

		mov ax,3
		push ax
		push bx
		add bx,1
		mov ax,0x0D
		push ax
		mov ax,boradLine2
		push ax
		call DisplayString

		mov ax,3
		push ax
		push bx
		add bx,1
		mov ax,0x0D
		push ax
		mov ax,boradLine2
		push ax
		call DisplayString

		mov ax,3
		push ax
		push bx
		add bx,1
		mov ax,0x0D
		push ax
		mov ax,boradLine2
		push ax
		call DisplayString

		mov ax,3
		push ax
		push bx
		add bx,1
		mov ax,0x0D
		push ax
		mov ax,boardLine3
		push ax
		call DisplayString

		mov ax,3
		push ax
		push bx
		add bx,1
		mov ax,0x0D
		push ax
		mov ax,boradLine2
		push ax
		call DisplayString

		mov ax,3
		push ax
		push bx
		add bx,1
		mov ax,0x0D
		push ax
		mov ax,boradLine2
		push ax
		call DisplayString

		mov ax,3
		push ax
		push bx
		add bx,1
		mov ax,0x0D
		push ax
		mov ax,boradLine2
		push ax
		call DisplayString

		mov ax,3
		push ax
		push bx
		add bx,1
		mov ax,0x0D
		push ax
		mov ax,boardLine4
		push ax
		call DisplayString
		
		; Staring of 2nd Box
		mov ax,3
		push ax
		push bx
		add bx,1
		mov ax,0x0D
		push ax
		mov ax,boradLine2
		push ax
		call DisplayString

		mov ax,3
		push ax
		push bx
		add bx,1
		mov ax,0x0D
		push ax
		mov ax,boradLine2
		push ax
		call DisplayString

		mov ax,3
		push ax
		push bx
		add bx,1
		mov ax,0x0D
		push ax
		mov ax,boradLine2
		push ax
		call DisplayString

		mov ax,3
		push ax
		push bx
		add bx,1
		mov ax,0x0D
		push ax
		mov ax,boardLine3
		push ax
		call DisplayString

		mov ax,3
		push ax
		push bx
		add bx,1
		mov ax,0x0D
		push ax
		mov ax,boradLine2
		push ax
		call DisplayString

		mov ax,3
		push ax
		push bx
		add bx,1
		mov ax,0x0D
		push ax
		mov ax,boradLine2
		push ax
		call DisplayString

		mov ax,3
		push ax
		push bx
		add bx,1
		mov ax,0x0D
		push ax
		mov ax,boradLine2
		push ax
		call DisplayString

		mov ax,3
		push ax
		push bx
		add bx,1
		mov ax,0x0D
		push ax
		mov ax,boardLine3
		push ax
		call DisplayString

		mov ax,3
		push ax
		push bx
		add bx,1
		mov ax,0x0D
		push ax
		mov ax,boradLine2
		push ax
		call DisplayString


		mov ax,3
		push ax
		push bx
		add bx,1
		mov ax,0x0D
		push ax
		mov ax,boradLine2
		push ax
		call DisplayString

		mov ax,3
		push ax
		push bx
		add bx,1
		mov ax,0x0D
		push ax
		mov ax,boradLine2
		push ax
		call DisplayString

		mov ax,3
		push ax
		push bx
		add bx,1
		mov ax,0x0D
		push ax
		mov ax,boardLine4
		push ax
		call DisplayString
		
		; Starting of 3Rd Box
		mov ax,3
		push ax
		push bx
		add bx,1
		mov ax,0x0D
		push ax
		mov ax,boradLine2
		push ax
		call DisplayString

		mov ax,3
		push ax
		push bx
		add bx,1
		mov ax,0x0D
		push ax
		mov ax,boradLine2
		push ax
		call DisplayString

		mov ax,3
		push ax
		push bx
		add bx,1
		mov ax,0x0D
		push ax
		mov ax,boradLine2
		push ax
		call DisplayString

		mov ax,3
		push ax
		push bx
		add bx,1
		mov ax,0x0D
		push ax
		mov ax,boardLine3
		push ax
		call DisplayString

		mov ax,3
		push ax
		push bx
		add bx,1
		mov ax,0x0D
		push ax
		mov ax,boradLine2
		push ax
		call DisplayString

		mov ax,3
		push ax
		push bx
		add bx,1
		mov ax,0x0D
		push ax
		mov ax,boradLine2
		push ax
		call DisplayString

		mov ax,3
		push ax
		push bx
		add bx,1
		mov ax,0x0D
		push ax
		mov ax,boradLine2
		push ax
		call DisplayString
		
		mov ax,3
		push ax
		push bx
		add bx,1
		mov ax,0x0D
		push ax
		mov ax,boardLine3
		push ax
		call DisplayString
		
		mov ax,3
		push ax
		push bx
		add bx,1
		mov ax,0x0D
		push ax
		mov ax,boradLine2
		push ax
		call DisplayString

		mov ax,3
		push ax
		push bx
		add bx,1
		mov ax,0x0D
		push ax
		mov ax,boradLine2
		push ax
		call DisplayString

		mov ax,3
		push ax
		push bx
		add bx,1
		mov ax,0x0D
		push ax
		mov ax,boradLine2
		push ax
		call DisplayString

		mov ax,3
		push ax
		push bx
		add bx,1
		mov ax,0x0D
		push ax
		mov ax,boradLine2
		push ax
		call DisplayString

		mov ax,3
		push ax
		push bx
		add bx,1
		mov ax,0x0D
		push ax
		mov ax,boardLine5
		push ax
		call DisplayString
	
		

		pop ax
		pop bx
	ret
	
	;=================================================================

	
	;=================== Side Panel function =========================
	
	DisplaySidePanel:
		push ax
		push bx
		push cx
		push di
		push si
		push es
		mov bx,2

		mov ax, 65
		push ax
		push bx
		mov ax,0x0A
		push ax
		mov ax,boxline1
		push ax
		call DisplayString
		
		mov ax, 145
		push ax
		push bx
		mov ax,0x0A
		push ax
		mov ax,Scorestr
		push ax
		call DisplayString

		
		mov ax, 225
		push ax
		push bx
		mov ax,0x0A
		push ax
		mov ax,boxline2
		push ax
		call DisplayString
		
		
		mov ax, 385
		push ax
		push bx
		mov ax,0x0A
		push ax
		mov ax,boxline1
		push ax
		call DisplayString
		
		mov ax, 465
		push ax
		push bx
		mov ax,0x0A
		push ax
		mov ax,Timestr
		push ax
		call DisplayString
		
		mov ax, 545
		push ax
		push bx
		mov ax,0x0A
		push ax
		mov ax,boxline2
		push ax
		call DisplayString
		
		
		
		mov ax, 783
		push ax
		push bx
		mov ax,0x0B
		push ax
		mov ax,notestr
		push ax
		call DisplayString
		
		mov ax, 863
		push ax
		push bx
		mov ax,0x0B
		push ax
		mov ax,undostr
		push ax
		call DisplayString		
		
		mov ax, 945
		push ax
		push bx
		mov ax,0x0A
		push ax
		mov ax,boxline1
		push ax
		call DisplayString
		
		mov ax, 1025
		push ax
		push bx
		mov ax,0x0A
		push ax
		mov ax,livestr
		push ax
		call DisplayString
		
		mov ax, 1105
		push ax
		push bx
		mov ax,0x0A
		push ax
		mov ax,boxline2
		push ax
		call DisplayString
		
		mov ax, 1185
		push ax
		push bx
		mov ax,0x0F
		push ax
		mov ax,Miststr
		push ax
		call DisplayString 
		
		
		mov ax, 1347
		push ax
		push bx
		mov ax,0x0A
		push ax
		mov ax,cardstr
		push ax
		call DisplayString
		
		;	Card Printing
		mov ax, 1424
		push ax
		push bx
		mov ax,0x03
		push ax
		mov ax,numCard1
		push ax
		call DisplayString
		
		mov ax, 1584
		push ax
		push bx
		mov ax,0x03
		push ax
		mov ax,numCard2
		push ax
		call DisplayString
		
		
		mov ax, 1744
		push ax
		push bx
		mov ax,0x03
		push ax
		mov ax,numCard3
		push ax
		call DisplayString
		
		
		
		pop es
		pop si
		pop di
		pop cx
		pop bx
		pop ax
	ret
	
	
	;====================================================================
	
	
	;=================== Number print function =========================
	
	;Print Number At desired Location
	Displaydigit:   
		push bp
		mov bp, sp
		pusha
		push es
		mov ax, 0xb800
		mov es, ax
		mov di, [bp+4]              ; Location
		mov ax, [bp+6]              ; Number
		mov bx, 10
		mov cx, 0
		nextdigit:  
			mov dx, 0
			div bx
			add dl, 0x30
			push dx
			inc cx
			cmp ax, 0
		jnz nextdigit
		cmp cx, 1
		jnz pos
		mov byte [es:di], '0'
		mov byte[es:di+1],0x0F
		add di, 2
		pos:
			pop dx
			mov dh, 0x0F
			mov [es:di], dx
			add di, 2
		loop pos
		pop es
		popa
		pop bp
	ret 4
	
	
	; Helper Function to print Initial Number in Board
	extraadd:
		add di,14	; Across the Boxes Space
		mov bx, 0
		jmp return
	
	printnumbers:
		pusha
		mov ax,80
		mov dl,4	; Starting Number of row where to place the number Basicalli in the Middle of Cell
		mul dl
		add ax,6 ;starting column
		shl ax,1
		mov di,ax
		mov cx, 81
		mov ax,0xb800
		mov es,ax
		mov ah,0x0A
		xor si,si
		xor dx,dx
		mov bx, 0
		 
		loopprintnumber: 
			inc dx
			mov al,[Structure1+si]
			mov word[es:di],ax    
			inc bx
			inc si
			cmp bx,3
		je extraadd
		
		add di, 12
		return:
			cmp dx,9
		jne CurrentRow
		
		add di, 526
		xor dx,dx
			CurrentRow:
			loop loopprintnumber
		popa
	ret


	;=================== Timer print function =========================

	DisplayTime:  
		push bp
		mov bp, sp
		pusha
		push es
		mov ax, 0xB800
		mov es, ax
		mov di, [bp+4]              ; Location
		push word [bp+6]            ; minutes
		add di, 2
		push di
		call Displaydigit
		add di, 6
		mov byte [es:di], ':'
		mov byte[es:di+1],0x0F
		push word [bp+8]            ; Seconds
		add di, 6
		push di
		call Displaydigit
		   
		pop es
		popa
		pop bp
	ret 8

	; Stopwatch timer functionality
	Timer:  
		pusha
		push es
		push word [cs:tickcounter]
		push word [cs:second]
		push word [cs:minute]
		push 1570
		cmp word[gameover],1
		je changeTimer
		call DisplayTime
		changeTimer: 
			add word [cs:tickcounter], 55
			cmp word [cs:tickcounter], 1000
			jle ExitTimer
			mov word [cs:tickcounter], 0
			inc word [cs:second]
			cmp word [cs:second], 60
			jnz ExitTimer
			mov word [cs:second], 0
			inc word [cs:minute]
			cmp word [cs:minute], 60
			jnz ExitTimer
			mov word [cs:minute], 0
			 
		ExitTimer:
			mov al, 0x20
			out 0x20, al
		pop es
		popa
	iret	
	
	;====================================================================
	
	;======================== Mistake Print FUnction =====================
	DisplayMistake:
		push es
		push ax
		push di
		add word[Mistake], 1
			mov di, 2700              
			push word[Mistake]  
			push di
			call Displaydigit
			mov word[es:di],0x0720
		pop di
		pop ax
		pop es
	
	
	ret
	
	
	;====================================================================
	
	;==============  All Direction Movement Funcion  ====================

	
	Upward_Dir:
		cmp word[Downcount], 0
		je WhileTrue
		call ReleaseCursor
		sub di, 640
		call DisplayCursor
		dec word[Downcount]
	
	jmp WhileTrue
	
	Downward_Dir:
		cmp word[Downcount], 5
		je WhileTrue
		call ReleaseCursor
		add di, 640
		call DisplayCursor
		inc word[Downcount]
	
	jmp WhileTrue
	
	HelperfuncforLeftside:
		sub di, 14
		call DisplayCursor
		dec word[Rightcount]
		mov word[Boxcount], 2
	jmp WhileTrue
	
	
	leftside_Dir:
		cmp word[Rightcount],0
		je WhileTrue
		call ReleaseCursor
		cmp word[Boxcount], 0
		je HelperfuncforLeftside
		sub di, 12
		call DisplayCursor
		dec word[Rightcount]
		dec word[Boxcount]
	jmp WhileTrue
	
	HelperfuncforRightside:
		add di, 14
		call DisplayCursor
		inc word[Rightcount]
		mov word[Boxcount],0
	jmp WhileTrue
	
	Rightside_Dir:
		cmp word[Rightcount], 8
		je WhileTrue
		call ReleaseCursor
		cmp word[Boxcount],2
		je HelperfuncforRightside
		add di, 12
		call DisplayCursor
		inc word[Rightcount]
		inc word[Boxcount]
	jmp WhileTrue
	
	
	
	;=====================================================================
	
	;=================== Cursor Display function =========================
	
	ReleaseCursor:
		mov ax,[es:di]
		and ah, 0x0F
		mov word[es:di],ax
	
	ret
	
	DisplayCursor:
		mov ax,[es:di]
		or ah, 0xD0
		mov word[es:di],ax
		
	ret
	
	Cursor:
		mov ax, 0xb800
		mov es,ax
		mov di, 652
		call DisplayCursor
	ret
	
	
	; ==================================================================
		
	; ==============  Check Winning Condi  =============================
	
	CheckForWin:
		push ax
		push bx
		push cx
		
		xor bx,bx
		mov cx,81
		
		innerLoop:
			mov al,[Structure1+bx]
			cmp al,0x20
			je exitlabel
			inc bx
		loop innerLoop	
		
		mov word[Winning],1	
		
		exitlabel:
		pop cx
		pop bx
		pop ax	
	ret
	
	
	;====================================================================
	
	; Helper Fucntion To Calculate Current position
	
	Calculate_Index:
		push ax
		mov ax, [Initial_Row]	; ini row = 0 
		mov bl, 9
		mul bl
		mov bx, ax
		add bx, [Initial_Col]	; ini col = 0 
		
		pop ax
	ret
	
	
	; ==============  ALL Checking for Numbers  =============================
	
	Check_For_row:
		push ax
		push bx
		push si
		push dx
		call Calculate_Index
		mov dx, [Initial_Col]
		mov si, 0
		
		forwardRowcheck:
			cmp dx, 9
			je nextStep
			cmp al, [Structure1 + bx + si]
			je HasfoundinRow
			inc dx
			inc si
		jmp forwardRowcheck
			
		nextStep:
			mov dx, [Initial_Col]
			mov si, 0
		
		backwardRowCheck:
			cmp dx, 0xFFFF
			je NotfoundinRow
			cmp al, [Structure1 + bx + si]
			je HasfoundinRow
			dec dx
			dec si
		jmp backwardRowCheck
	
		NotfoundinRow:
			mov word[Note_flag], 1
		jmp ReturningfromCheckRow
			
		HasfoundinRow:
			mov Word[Note_flag], 0
		
		ReturningfromCheckRow:
		pop dx
		pop si
		pop bx
		pop ax
	
	ret
	
	Check_For_Col:
		push ax
		push bx
		push si
		push dx
		call Calculate_Index
		mov dx, [Initial_Row]
		mov si, 0
		
		DownColcheck:
			cmp dx, 9
			je nextStep1
			cmp al, [Structure1 + bx + si]
			je HasfoundinCol
			inc dx
			add si, 9
		jmp DownColcheck
			
		nextStep1:
			mov dx, [Initial_Row]
			mov si, 0
		
		UpColCheck:
			cmp dx, 0xFFFF
			je NotfoundinCol
			cmp al, [Structure1 + bx + si]
			je HasfoundinCol
			dec dx
			sub si, 9
		jmp UpColCheck
	
		NotfoundinCol:
			mov word[Note_flag], 1
		jmp ReturningfromCheckCol
			
		HasfoundinCol:
			mov Word[Note_flag], 0
		
		ReturningfromCheckCol:
		pop dx
		pop si
		pop bx
		pop ax

	ret


	; Check_For_Box:
		; push ax
		; push bx
		; push cx
		; push dx
		; push si
		
	
	
	; ret
	
	
	; ==============  Note status Display  =============================
	
	DisplayNoteStatus:
		pusha
		xor word[noteStat], 1
		mov ax, 72
		push ax
		mov bx, 11
		push bx
		cmp word[noteStat], 0
		je OFFNote
		mov ax, 0x0A
		push ax
		mov ax, noteon
		push ax
		call DisplayString
		jmp poppingreg
		
		OFFNote:
			mov ax, 0x0C
			push ax
			mov ax, noteoff
			push ax
			call DisplayString
		
		poppingreg:
		popa
	jmp WhileTrue
	
	
	
	;      Notes functionality
	Place_Notes:
		call Check_For_row
		cmp word[Note_flag], 0	; Condition If Number Found in the Whole Row
		je WhileTrue
		call Check_For_Col
		cmp word[Note_flag], 0	; Condition If Number Found in the Whole Column
		je WhileTrue
		; call Check_For_Box   	; Condition If Number Found in the Whole Box
		; cmp word[Note_flag], 0
		; je WhileTrue
		
		cmp ch, 0x74
		jne Next_Value
		mov word[es:di], 0x7A20
		
		Next_Value:
			; cmp al, 0x31
			; je ONE_PRESSED
			
			; cmp al, 0x32
			; je TWO_PRESSED
		
			; cmp al, 0x33
			; je THREE_PRESSED
			
			; cmp al, 0x34
			; je FOUR_PRESSED
			
			; cmp al, 0x35
			; je FIVE_PRESSED
			
			; cmp al, 0x36
			; je SIX_PRESSED
			
			; cmp al, 0x37
			; je SEVEN_PRESSED
			
			; cmp al, 0x38
			; je EIGHT_PRESSED
			
			; cmp al, 0x39
			; je NINE_PRESSED
		
	;====================================================================
	
	; ==============  Calculation For Position  =========================
	
	InitialBoxPosition:
		push ax
		mov ax,0
		cmp word[Initial_Col], 2
		jbe SetBox
		inc ax
		cmp word[Initial_Col], 5
		jbe SetBox
		inc ax
		SetBox:
			inc ax
			cmp word[Initial_Row],2
			jbe ExitInitailBoxPos
			add ax,3
			cmp word[Initial_Row],5
			jbe ExitInitailBoxPos
			add ax,3
		ExitInitailBoxPos:
			mov [Initial_Box],ax
		pop ax
	ret
	
	
	Initial_Position_Cursor:
		push ax
		mov ax, word[Downcount]	; Count to track How much cursor is downward Max = 5
		cmp word[isscrolldown], 1
		je notScrolled
		add ax, 3
		notScrolled:
		mov word[Initial_Row], ax
		mov ax, word[Rightcount]
		mov word[Initial_Col], ax
		pop ax
		call InitialBoxPosition
	
	ret
	
	
	;====================================================================
	
	; ==============  Score status Display  =============================

	
	DisplayScore:
		push es
		push ax
		push di
				mov di, 938              ; Location
				push word[Scorenum]            
				push di
				call Displaydigit
		cmp word[Scorenum],100
		jae exit_score
		mov word[es:418],0x0720
		
		exit_score:
		pop di
		pop ax
		pop es
	
	ret
	
	
	AddScore:
		cmp word[minute], 0
		je Plus200
		cmp word[minute], 1
		je Plus100
		cmp word[minute], 2
		je Plus50
		
		Plus200:
		add word[Scorenum], 200
		jmp ExitAddScore
		Plus100:
		add word[Scorenum], 100
		jmp ExitAddScore
		Plus50:
		add word[Scorenum], 50
		ExitAddScore:
		
	ret
	
	;====================================================================
	
	;		HleprFUnction to Check Inputs
	Correct_Input:
		Call AddScore
		mov byte[Structure1 + bx], al
		mov ah, 0x7A
		mov word[es:di],ax
		
	jmp WhileTrue
	
	Wrong_Input:
		cmp al, cl 
		je RemoveDigit
		
		mistakefound:
			mov ah, 0x74
			mov word[es:di], ax
		call DisplayMistake	
	
	jmp WhileTrue
	
	RemoveDigit:
		cmp cl, 0x74
		je mistakefound
		mov word[es:di], 0x7020
	jmp WhileTrue
	
	
	;======================== All Keys Press Labels =====================

	upper_part:
			cmp word[isscrollup],1
			je WhileTrue
			call ReleaseCursor
			call scrollup
			mov word[isscrollup], 1
			mov word[isscrolldown], 0
			mov ax, 0xb800
			mov es, ax
			mov di, 12
			call DisplayCursor
			mov word[Rightcount],0
			mov word[Downcount],0
			mov word[Boxcount], 0
			mov word[Undoarr],0		; Array For Undo the Move 
	jmp WhileTrue

	lower_part:
		cmp word[isscrolldown],1
		je WhileTrue
		call ReleaseCursor
		call scrolldown
		mov word[isscrolldown], 1
		mov word[isscrollup], 0
		mov ax, 0xb800
		mov es, ax
		mov di, 652
		call DisplayCursor
		mov word[Rightcount],0
		mov word[Downcount],0
		mov word[Boxcount], 0
		mov word[Undoarr],0		; Array For Undo the Move 
	jmp WhileTrue
		
	N_PRESSED:
		mov cx, [es:di]
		cmp cl, 0x20
		je Perform_Action
		Incorrect_Check:
			cmp ch, 0x74
		je Perform_Action
		
		Notes_Status_Check:
			cmp ch, 0x7A 	; Comparing with Color of Input Position 
			jne WhileTrue
		Perform_Action:
			cmp word[noteStat], 1
			je Place_Notes
			
			
			call Calculate_Index
			cmp al, [Struct1Sol + bx]
			jne Wrong_Input
			jmp Correct_Input
		
	
	;====================================================================
	
	
	
	;======================== Main FUnction =============================
	Start:
	    call clrscr
		call StartingScrfunc
		mov word[Mistake],0
		S_PRESSED:
			mov ah,0x00
			int 16h
			cmp al, 's'
		jne S_PRESSED
		
		
		call DisplayBoard
		call DisplaySidePanel
		call printnumbers
		;	Adding Timer
		mov ax, [es:8*4] 
		mov word [oldISR], ax	; Saving the Old Interrupt Service Routine
		mov ax, [es:8*4+2] 
		mov word [oldISR + 2], ax
		xor ax,ax 
		mov es, ax
		cli
		; Hook the timer interrupt to stopwatch
		mov word [es:8*4], Timer
		mov [es:8*4+2], cs
		sti
	
		; To Track the Cells Making A Cursor
		call Cursor
		;call DisplayMistake
		jmp DisplayNoteStatus
		
		
		WhileTrue:
		
			
			cmp word[Mistake], 3
			je Ending
			
			call CheckForWin
			cmp word[Winning],1
			je Ending
			
			call Initial_Position_Cursor
			
			call DisplayScore
			mov ax,0x00
			int 16h
			
			cmp ah,51h
			je upper_part
			
			cmp ah,49h
			je lower_part
			
			cmp ah, 0x48
			je Upward_Dir
			
			cmp ah, 0x50
			je Downward_Dir
			
			cmp ah, 0x4B
			je leftside_Dir
			
			cmp ah, 0x4D
			je Rightside_Dir
			
			cmp al, 0x31
			je N_PRESSED
			
			cmp al, 0x32
			je N_PRESSED
			
			cmp al, 0x33
			je N_PRESSED
			
			cmp al, 0x34
			je N_PRESSED
			
			cmp al, 0x35
			je N_PRESSED
			
			cmp al, 0x36
			je N_PRESSED
			
			cmp al, 0x37
			je N_PRESSED
			
			cmp al, 0x38
			je N_PRESSED
			
			cmp al, 0x39
			je N_PRESSED
			
			cmp al, 'n'
			je DisplayNoteStatus
			
			cmp al,'e'
			je Ending
			
			

			

			
		jmp WhileTrue

		
Ending:
    push ax
	push bx
	push es
	push word 0h
	pop es
	mov ax,[oldISR]
	mov bx,[oldISR+2]
	cli
	mov [es:8*4],ax
	mov [es:8*4+2],bx
	pop es
	pop bx
	pop ax
	
    mov word[gameover],1
	
	  
	 call clrscr
		cmp word[Winning],0
		je lost
		
		mov ax,se3
		push ax
		push word[lengthE]
		mov di,380            
		push di
		mov ax,0x02
		push ax
		call printstrE
		
		mov ax,se4
		push ax
		push word[lengthE]
		mov di,540         
		push di
		mov ax,0x02
		push ax
		call printstrE
	
	    mov ax,se5
		push ax
		push word[lengthE]
		mov di,700         
		push di
		mov ax,0x02
		push ax
		call printstrE
		
		
		 mov ax,se6
		push ax
		push word[lengthE]
		mov di,860         
		push di
		mov ax,0x02
		push ax
		call printstrE
		
		 mov ax,se7
		push ax
		push word[lengthE]
		mov di,1020         
		push di
		mov ax,0x02
		push ax
		call printstrE
		
		
		
		 mov ax,se8
		push ax
		push word[lengthE]
		mov di,1340         
		push di
		mov ax,0x02
		push ax
		call printstrE
		
		 mov ax,se9
		push ax
		push word[lengthE]
		mov di,1500        
		push di
		mov ax,0x02
		push ax
		call printstrE
		
		 mov ax,se10
		push ax
		push word[lengthE]
		mov di,1660         
		push di
		mov ax,0x02
		push ax
		call printstrE
		
		 mov ax,se11
		push ax
		push word[lengthE]
		mov di,1820        
		push di
		mov ax,0x02
		push ax
		call printstrE
		
		 mov ax,se12
		push ax
		push word[lengthE]
		mov di,1980         
		push di
		mov ax,0x02
		push ax
		call printstrE
		
		
		mov ax,se2
		push ax
		push word[length2E]
		mov di,2774         
		push di
		mov ax,0x9b
		push ax
		call printstrE
		
		jmp ProgramEnd
		
lost:
      
	 mov ax,se13
		push ax
		push word[lengtE]
		mov di,374            
		push di
		mov ax,0x04
		push ax
		call printstrE
		
		mov ax,se14
		push ax
		push word[lengtE]
		mov di,534         
		push di
		mov ax,0x04
		push ax
		call printstrE
	
	    mov ax,se15
		push ax
		push word[lengtE]
		mov di,694         
		push di
		mov ax,0x04
		push ax
		call printstrE
		
		
		 mov ax,se16
		push ax
		push word[lengtE]
		mov di,854         
		push di
		mov ax,0x04
		push ax
		call printstrE
		
		 mov ax,se17
		push ax
		push word[lengtE]
		mov di,1014         
		push di
		mov ax,0x04
		push ax
		call printstrE
		
		
		
		 mov ax,se18
		push ax
		push word[lengtE]
		mov di,1334         
		push di
		mov ax,0x04
		push ax
		call printstrE
		
		 mov ax,se19
		push ax
		push word[lengtE]
		mov di,1494        
		push di
		mov ax,0x04
		push ax
		call printstrE
		
		 mov ax,se20
		push ax
		push word[lengtE]
		mov di,1654         
		push di
		mov ax,0x04
		push ax
		call printstrE
		
		 mov ax,se21
		push ax
		push word[lengtE]
		mov di,1814        
		push di
		mov ax,0x04
		push ax
		call printstrE
		
		 mov ax,se22
		push ax
		push word[lengtE]
		mov di,1974         
		push di
		mov ax,0x04
		push ax
		call printstrE
		
		
		
		mov ax,se2
		push ax
		push word[length2E]
		mov di,2774         
		push di
		mov ax,0x9b
		push ax
		call printstrE
		
	
		
		
		
		
	ProgramEnd:
	    
	
		mov ax, 0x4c00
		int 0x21