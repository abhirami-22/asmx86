BITS 32

extern printf

section .rodata
    text: db "Namah Shivaya!", 10, 0

section .text
    global main

    main:
        push ebp
        mov ebp, esp

        push text
        call printf
        add esp, 4

        mov eax, 0
        mov esp, ebp
        pop ebp
        ret
