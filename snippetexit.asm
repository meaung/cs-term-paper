mov rax, [SystemTable]
mov rax, [rax+EFI_SYSTEM_TABLE.BootServices]
mov rcx, MemoryMapSize
mov rdx, MemoryMap
mov r8, MapKey
mov r9, DescriptorSize
mov r10, DescriptorVersion
mov [rsp + 4*8], r10
call [rax+EFI_BOOT_SERVICES.GetMemoryMap]

; Off we go!
mov rax, [SystemTable]
mov rax, [rax+EFI_SYSTEM_TABLE.BootServices]
mov rcx, [ImageHandle]
mov rdx, [MapKey]
call [rax+EFI_BOOT_SERVICES.ExitBootServices]

;mov rcx, [FramebufferAddress]
;mov rdx, [PixelsPerScanLine]
;mov rcx, FramebufferAddress
mov rcx, bootloaderStruct
call [KernelEntryPoint]
