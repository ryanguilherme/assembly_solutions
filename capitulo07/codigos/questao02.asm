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
			fat			value
			INVOKE		printf, ADDR format, eax
			ret
main		endp

fat			proc 		value
			mov			eax, 1
			.while		value > 0
			imul		value
			dec			value
			.endw
			ret
fat			endp
