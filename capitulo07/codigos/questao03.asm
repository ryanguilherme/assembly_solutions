			.686
			.model flat, c
			.stack 100h
printf		PROTO arg1:Ptr Byte, printlist:VARARG
scanf		PROTO arg2:Ptr Byte, inputlist:VARARG

			.data
format		byte "%d", 0
value		sdword ?
result		sdword 0

			.code
main		proc
			INVOKE		scanf, ADDR format, ADDR value
			call		fib
			INVOKE		printf, ADDR format, result
			ret
main		endp

fib			proc
			mov			eax, 0
			mov			ebx, 0
			mov			ecx, 0
			mov			edx, 0
			.while		ecx < value
			.if			ecx <= 1
			mov			eax, ecx
			mov			result, eax
			mov			edx, eax
			.else
			add			eax, edx
			add			eax, ebx
			mov			ebx, edx
			mov			edx, eax
			mov			result, eax
			mov			eax, 0
			.endif
			inc			ecx
			.endw
			.if			value == 1
			mov			result, 1
			.endif
			ret	
fib			endp
			end





