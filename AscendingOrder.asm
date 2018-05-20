
            ;  Muhammad Hamza 1602028
ExitProcess proto
.data
array qword 11,14,19,12,15  
.code
main proc
                      
  CALL Ascending
CALL ExitProcess
main endp
;***** This function sort the array in Ascending order *****
  Ascending PROC
	 PUSH RBP
	 mov RBP,RSP
	  mov rcx , LENGTHOF array
	  sub rcx,1
	outerloop:
	   push rcx
	   mov rsi,rcx;
	   mov rax,[array+8*rcx]
	   mov rcx , LENGTHOF array
       sub rcx,1
	     innerloop:      
		    mov rdx,[array+8*rcx]
			cmp rdx,rax
			JL Swapping
			jampping:
		 LOOP innerloop
	   pop rcx
      LOOP outerloop
      mov RSP,RBP
      pop RBP
	  ret
		  Swapping:		   
		  mov [array+8*rcx],rax
		  mov [array+8*rsi],rdx
		  mov rax,[array+8*rsi]
		  jmp jampping
    Ascending ENDP
end
