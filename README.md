# Assembly-Level Implementation of a Minimalist UEFI Bootloader for Custom Operating Systems

This repository contains the term paper for my Bachelor's degree in Computer Science, titled "Assembly-Level Implementation of a Minimalist UEFI Bootloader for Custom Operating Systems".

The paper uses the IEEE Conference LaTeX template.

## Abstract

This paper presents the implementation of a minimalist UEFI x64 bootloader and kernel entirely in assembly using the FASM assembler.
The implementation is unique in that both the bootloader and kernel executables are created from simple flat binary output from the assembler. The generation of PE32+ and ELF64 executables and the interfaces required to interact with UEFI hardware are implemented from scratch by referring to their ABI specification documents without relying on libraries.
This technique eliminates toolchain dependencies, grants full control to the system architect, and facilitates deeper understanding of internal mechanisms.
The work serves as both a foundation for the future development of a modern operating system free from legacy design decisions and an educational resource for understanding the esoteric nature of operating systems development.
