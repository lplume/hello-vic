;COMMON HEADER
	include "include/V1_Header.asm"                 ;Cartridge/Program header - platform specific
	include "include/BasicMacros.asm"               ;Basic macros for ASM tasks

	SEI						                        ;Stop interrupts
	jsr ScreenInit			                        ;Init the graphics screen
	jsr Cls					                        ;Clear the screen
;END OF COMMON HEADER

	;start of code $100A
	
;COMMON FOOTER	
	include "include/Monitor.asm"       			;Debugging tools
	include "include/BasicFunctions.asm"        	;Basic commands for ASM tasks
	include "include/V1_Functions.asm"          	;Basic text to screen functions
	include "include/VIC_V1_VdpMemory.asm"		    ;VRAM functions for Tilemap Systems
	include "include/V1_Palette.asm"		        ;Palette functions
;END OF COMMON FOOTER