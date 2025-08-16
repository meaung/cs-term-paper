mov rax, [SystemTable]
mov rax, [rax+EFI_SYSTEM_TABLE.BootServices]
mov rcx, [ImageHandle]
lea rdx, [efiLoadedImageProtocolGuid]
lea r8, [loadedImage]
call [rax+EFI_BOOT_SERVICES.HandleProtocol]

mov rax, [SystemTable]
mov rax, [rax+EFI_SYSTEM_TABLE.BootServices]
mov rcx, [loadedImage]
mov rcx, [rcx+EFI_LOADED_IMAGE_PROTOCOL.DeviceHandle]
lea rdx, [efiSimpleFileSystemProtocolGuid]
lea r8, [bootVolume]
call [rax+EFI_BOOT_SERVICES.HandleProtocol]


mov rax, [bootVolume]
mov rcx, [bootVolume]
lea rdx, [rootFile]
call [rax+EFI_SIMPLE_FILE_SYSTEM_PROTOCOL.OpenVolume]

mov rax, [rootFile]
mov rcx, [rootFile]
mov rdx, kernelFile
mov r8, fileName
mov r9, EFI_FILE_MODE_READ
mov r10, 0
mov [rsp + 4*8], r10
call [rax+EFI_FILE_PROTOCOL.Open]

mov rax, [kernelFile]
mov rcx, [kernelFile]
mov rdx, readSize
mov r8, KernelAddress
call [rax+EFI_FILE_PROTOCOL.Read]

mov rdx, [KernelAddress+Elf64_Ehdr.e_entry]
mov [KernelEntryPoint], rdx

