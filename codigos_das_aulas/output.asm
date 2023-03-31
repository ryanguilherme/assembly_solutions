        .686
        .model flat, c
        .stack 100h
printf  PROTO   arg1:Ptr byte
        .data
msg1    byte    "Hello World!", 0Ah, 0
        .code
main    proc
        INVOKE  printf, ADDR msg1
        ret
main    endp
        end

