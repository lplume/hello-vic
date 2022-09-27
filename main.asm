;COMMON HEADER
	include "include/V1_Header.asm"                 ;Cartridge/Program header - platform specific
	include "include/BasicMacros.asm"               ;Basic macros for ASM tasks

	SEI						                        ;Stop interrupts
	jsr ScreenInit			                        ;Init the graphics screen
	jsr Cls					                        ;Clear the screen
;END OF COMMON HEADER

	;start of code $100A
	lda #0
	lda #>HelloWorld		;Load address of message into Zeropage $20/1
	sta $21
	lda #<HelloWorld
	sta $20
	
	jsr PrintStr			;ShowString routine
	jsr Newline
	jsr Newline
	
	
	rts						;Return to basic
	

HelloWorld:
	db "Hello World",255
	
PrintStr:
        ldy #0				;Reset Y
PrintStr_again:
        lda ($20),y		;Read in a character
        
		cmp #255
        beq PrintStr_Done	;Return if we've reached a 255
        
		jsr PrintChar		;Print to screen if not
        iny
        jmp PrintStr_again	;repeat
PrintStr_Done:
        rts					;Return when done					
	
PrintCharOK:
	jmp $ffd2
	
;COMMON FOOTER	
	include "include/Monitor.asm"       			;Debugging tools
	include "include/BasicFunctions.asm"        	;Basic commands for ASM tasks
	include "include/V1_Functions.asm"          	;Basic text to screen functions
	include "include/VIC_V1_VdpMemory.asm"		    ;VRAM functions for Tilemap Systems
	include "include/V1_Palette.asm"		        ;Palette functions
;END OF COMMON FOOTER