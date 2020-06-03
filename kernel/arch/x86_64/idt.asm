%include "kernel/arch/x86_64/macros.asm"

global idtflush
extern isrhandler

section .text
idtflush:
    lidt [rdi]
    ret

commonisr:
    pushaq
    call isrhandler
    popaq
    iretq

NOOISR_ERRCODE 0
NOOISR_ERRCODE 1
NOOISR_ERRCODE 2
NOOISR_ERRCODE 3
NOOISR_ERRCODE 4
NOOISR_ERRCODE 5
NOOISR_ERRCODE 6
NOOISR_ERRCODE 7
YESISR_ERRCODE 8
NOOISR_ERRCODE 9
YESISR_ERRCODE 10
YESISR_ERRCODE 11
YESISR_ERRCODE 12
YESISR_ERRCODE 13
YESISR_ERRCODE 14
NOOISR_ERRCODE 15
NOOISR_ERRCODE 16
YESISR_ERRCODE 17
NOOISR_ERRCODE 18
NOOISR_ERRCODE 19
NOOISR_ERRCODE 20
YESISR_ERRCODE 21
NOOISR_ERRCODE 22
NOOISR_ERRCODE 23
NOOISR_ERRCODE 24
NOOISR_ERRCODE 25
NOOISR_ERRCODE 26
NOOISR_ERRCODE 27
NOOISR_ERRCODE 28
NOOISR_ERRCODE 29
NOOISR_ERRCODE 30
NOOISR_ERRCODE 31

IRQ 0, 32
IRQ 1, 33
IRQ 2, 34
IRQ 3, 35
IRQ 4, 36
IRQ 5, 37
IRQ 6, 38
IRQ 7, 39
IRQ 8, 40
IRQ 9, 41
IRQ 10, 42
IRQ 11, 43
IRQ 12, 44
IRQ 13, 45
IRQ 14, 46
IRQ 15, 47
