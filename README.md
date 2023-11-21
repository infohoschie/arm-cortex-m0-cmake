# Arm Cortex-M0 Base Project

Example Workspace für die Vorlesung Systemnahe Programmierung I an der
DHWB Ravensburg.

## Arm Documentation
 - [Cortex M0 Startseite](https://developer.arm.com/Processors/Cortex-M0)
   - [ARMv7-M Architecture Reference Manual](https://developer.arm.com/documentation/ddi0403/latest/)
   - [Cortex-M4 Devices Generic User Guide](https://developer.arm.com/documentation/dui0553/b/?lang=en)
   - [Arm Cortex-M4 Processor Technical Reference Manual Revision r0p1](https://developer.arm.com/documentation/100166/0001/?lang=en)
 - [Arm Application Binary Interface](https://github.com/ARM-software/abi-aa)
 - [GNU Assembler Documentation](https://sourceware.org/binutils/docs-2.40/as/index.html)
 - [GNU Linker Documentation](https://sourceware.org/binutils/docs-2.40/ld/index.html)

## Prerequisites
 - CMake
 - Arm GCC Cross-Compiler
 - QEMU

### Windows
Installation von CMake über Download des Installers (https://cmake.org/download/)
oder Paketmanager `winget install CMake.CMake`.

Installation der ARM GCC Toolchain [Website](https://gnutoolchains.com/arm-eabi/)
Nach z.B. C:\Toolchains\
**WICHTIG:** zu PATH hinzufügen (lassen)

### Linux
Über Paketmanager Installieren:

**Ubuntu/ Debian**: ```sudo apt install gcc-arm-none-eabi cmake```

**Arch**:
```
yay -S gcc-arm-none-eabi-bin 
sudo pacman -S cmake
```

### macOS
```brew install gcc-arm-embedded```

## Building
Auschecken des Quellcodes:
`git clone https://github.com/infohoschie/Arm-Cortex-M4-Base.git`

Erstellen des Build:
 - Mittels CMake Presets:
   ```cmake --preset arm-cortex-m0```
 - Klassisch:
   ```cmake -B build -S . -DCMAKE_BUILD_TYPE=Debug -DCMAKE_TOOLCHAIN_FILE=toolchain.cmake```

Bauen:
 - Mittels CMake Presets:
  ```cmake --build --preset arm-cortex-m0```
 - Klassisch:
   ```cmake --build build```

## IDEs
### Jetbrains CLion
Das Projekt kann direkt in der IDE geöffnet (ausgechecked) werden.
Die CMake Presets werden direkt als build-target angeboten

### Visual Studio Code
TODO:
 - [ ] Plugins
 - [ ] Configuration
