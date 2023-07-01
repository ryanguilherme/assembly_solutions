; Correção: 0,1
			.686
			.model flat, c
			.stack 100h
printf		PROTO arg1:Ptr Byte, printlist:VARARG
scanf		PROTO arg2:Ptr Byte, inputlist:VARARG

			.data
format		byte "%d", 0
value		sdword ?

			.code
main		proc
			INVOKE		scanf, ADDR format, ADDR value
			mov			ebx, value
			call		fat
			INVOKE		printf, ADDR format, eax
			ret
main		endp

fat			proc 
			mov			eax, 1
			.while		ebx > 0
			imul		ebx
			dec			ebx
			.endw
			ret
fat			endp
			end
