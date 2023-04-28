---A

            .code
main        proc
if01:       cmp     w, 1
            jne     endif01
then01:     cmp     x, 2
            jne     endif01
            dec     y
endif01:    nop
            ret
main        endp
            end

---B

            .code
main        proc
if01:       cmp     num, 0
            ja      endif01
then01:     cmp     num, 3
            jbe     endif01
            add     count, 2
endif01:    nop
            ret
main        endp
            end

---C
            .code
main        proc
if01:       nop
or01:       nop
            cmp     w, 1
            je      and01
            cmp     x, 2
            jne     endif01
and01:      nop
            cmp     y, 3
            jne     endif01
then01:     nop
            inc     z
endif01:    nop
            ret
main        endp
            end
---D

            .code
main        proc
if01:       nop
and01:      cmp     b, 2
            jne     endif01
            cmp     c, 3
            jle     endif01
or01:       cmp     a, 1
            je      then01
            cmp     d, 4
            jge     endif01
then01:     dec     e
endif01:    nop
            ret
main        endp
            end

