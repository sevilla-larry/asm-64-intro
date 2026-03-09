    segment .data
a   dd      4
b   dd      4.4
c   times   10 dd 0
d   dw      1, 2
e   db      0xfb
f   db      "hello world", 0

    segment .bss
g   resd    1
h   resd    10
i   resb    100

    segment .text
    global  main        ; tell linker about main
main:
;    push    rbp         ; set up a stack frame
;    mov     rbp, rsp    ; rbp points to stack frame
;    sub     rsp, 16     ; leave some room for locals
;                        ; rsp on a 16 byte boundary
    sub     rsp, 24     ; leave some room for local variables
                        ; and align stack to 16 byte boundary
    xor     eax, eax    ; set rax = 0 for return value
;    leave               ; undo stack fram changes
    add     rsp, 24     ; undo the stack manipulations
    ret

