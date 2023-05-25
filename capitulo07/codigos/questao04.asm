			.686
			.model flat, c
			.stack 100h
printf		PROTO arg1:Ptr Byte, printlist:VARARG
scanf		PROTO arg2:Ptr Byte, printlist:VARARG

			.data
format		byte "%d", 0
value		sdword ?

			.code
macro		FACTORIAL 	value
			mov			eax, 1
			.while		value > 0
			imul		value
			dec			value
			.endw
			endm

main		proc
			INVOKE		scanf, ADDR format, ADDR value
			FACTORIAL	value
			INVOKE		printf, ADDR format, value
			ret
main		endp
			end
