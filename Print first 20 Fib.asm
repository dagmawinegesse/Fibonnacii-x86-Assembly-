
; This program will calculate and print the first 20 fibonnacci numbers 
; Author: Dagmawi Negese
; Date 2/7/2018

INCLUDE Irvine32.inc
.data

.code
main PROC
		 mov	    eax,0			; first number
		 mov		ebx,1			;second number 

		
		 call		WriteDec		;print the first number 
		 call		Crlf			;puts it into another statment
		 mov		edx,0			; counter
		 mov		esi,0			; temp
   
		;loop to repeat the addition to calcuale and print the fibonacci numbers 
L1:
	add		eax,ebx					;add ebx to eax		
	mov     esi,eax					;esi=eax+ebx

	mov eax,ebx						;move ebx to eax
	mov	ebx,esi						;move esi to ebx
     
	
	
	call WriteDec					;print out the fibonnacci numbers
	call Crlf
	inc edx							;increment the counter
	cmp edx,20-1					;goes to to 20 numbers 
	jl L1					
   
	exit

main	ENDP
END	main
