;   Program: exit
;
;   Executes the exit system call
;
;   No input
;
;   Output: only the exit status
;           $? in the shell
;
        segment .text
        global  _start
_start:
        mov     rax, 60     ; 60 is the exit syscall number
        mov     rdi, -1     ; the status value to return
        syscall             ; execute a system call
        end

