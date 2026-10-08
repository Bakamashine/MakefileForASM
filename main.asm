; printf_win.asm - Windows x86-64, uses printf from UCRT
default rel

extern printf
extern ExitProcess

section .data
    fmt     db  "Hello, World!", 10, 0      ; 10 = LF

section .text
    global main
main:
    sub     rsp, 40         ; shadow space (32) + 8 alignment

    lea     rcx, [fmt]      ; 1st arg: format string
    xor     eax, eax        ; AL=0: variadic call, no vector args
    call    printf

    xor     ecx, ecx        ; exit code 0
    call    ExitProcess
