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
if01:       cmp     w, 1
            je      if02
            jne     then01
then01:     cmp     x, 2
            jne     endall
            je      if02
endif01:    nop
if02:       cmp     y, 3
            jne     endall
then02:     inc     z
endif02:    nop
endall:     nop
            ret
main        endp
            end

---D

            .code
main        proc
if01:       cmp     a, 1
            je      if02
then01:     cmp     b, 2
            jne     endall
endif01:    nop
if02:       cmp     c, 3
            ja      then02
            cmp     d, 4
            jae     endall
then02:     dec     e
endif02:    nop
endall:     nop
            ret
main        endp
            end

