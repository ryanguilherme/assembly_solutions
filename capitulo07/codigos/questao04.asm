; Correção: 0,1

			.686
			.model flat, c
			.stack 100h
printf		PROTO arg1:Ptr Byte, printlist:VARARG
scanf		PROTO arg2:Ptr Byte, printlist:VARARG

			.data
format		byte "%d", 0
value		sdword ?

			.code
FACTORIAL	macro 		value
			mov			eax, 1
			mov			ecx, value
			.while		ecx > 1
			imul		ecx
			dec			ecx
			.endw
			endm

main		proc
			INVOKE		scanf, ADDR format, ADDR value
			FACTORIAL	value
			INVOKE		printf, ADDR format, eax
			ret
main		endp
			end
