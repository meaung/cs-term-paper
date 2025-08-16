ehdr:
.EI_MAG0         db 0x7f
.EI_MAG1         db 'E'
.EI_MAG2         db 'L'
.EI_MAG3         db 'F'
.EI_CLASS        db 2
.EI_DATA         db 1
.EI_VERSION      db 1
.EI_OSABI        db 0
.EI_ABIVERSION   db 0
.EI_PAD          rb 6
.EI_NIDENT       db 16

.e_type         dw 2
.e_machine      dw 62
.e_version      dd 1
.e_entry        dq main
.e_phoff        dq phdr - BASE
.e_shoff        dq 0
.e_flags        dd 0
.e_ehsize       dw phdr - ehdr
.e_phentsize    dw endphdr1 - phdr
.e_phnum        dw 2
.e_shentsize    dw 0
.e_shnum        dw 0
.e_shstrndx     dw 0
