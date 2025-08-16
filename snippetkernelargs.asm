startcode:
main:

sub rsp, 4*8

mov r9, [rcx+BOOTLOADER_STRUCT.framebufferAddress]
mov [FramebufferAddress], r9
mov r9, [rcx+BOOTLOADER_STRUCT.pixelsPerScanLine]
mov [PixelsPerScanLine], r9
