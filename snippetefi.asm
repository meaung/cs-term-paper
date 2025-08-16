
struc EFI_TABLE_HEADER
  label .
  .Signature  UINT64
  .Revision   UINT32
  .HeaderSize UINT32
  .CRC32      UINT32
  .Reserved   UINT32
end struc

virtual at 0
  EFI_TABLE_HEADER EFI_TABLE_HEADER
end virtual

struc EFI_SYSTEM_TABLE
  label .
  .Hdr                  EFI_TABLE_HEADER
  .FirmwareVendor       UINTN
  .FirmwareRevision     UINT32
  .ConsoleInHandle      UINTN
  .ConIn                UINTN
  .ConsoleOutHandle     UINTN
  .ConOut               UINTN
  .StandardErrorHandle  UINTN
  .StdErr               UINTN
  .RuntimeServices      UINTN
  .BootServices         UINTN
  .NumberOfTableEntries UINTN
  .ConfigurationTable   UINTN
end struc

virtual at 0
  EFI_TABLE_HEADER EFI_TABLE_HEADER
end virtual
