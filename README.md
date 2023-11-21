# Arm Cortex-M0 Base Project

Example Workspace für die Vorlesung Systemnahe Programmierung I an der
DHWB Ravensburg.

## Arm Documentation
 - [Cortex M0 Startseite](https://developer.arm.com/Processors/Cortex-M0)
   - [ARMv7-M Architecture Reference Manual](https://developer.arm.com/documentation/ddi0403/latest/)
   - [Cortex-M0 Devices Generic User Guide](https://developer.arm.com/documentation/dui0497/a/?lang=en)
   - [Cortex-M0 Technical Reference Manual r0p0](https://developer.arm.com/documentation/ddi0432/c/?lang=en)
 - [Arm Application Binary Interface](https://github.com/ARM-software/abi-aa)
 - [GNU Assembler Documentation](https://sourceware.org/binutils/docs-2.40/as/index.html)
 - [GNU Linker Documentation](https://sourceware.org/binutils/docs-2.40/ld/index.html)

## Prerequisites
 - CMake
 - Arm GCC Cross-Compiler
 - QEMU
 - GDB (Multi-Arch)

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
`git clone https://github.com/infohoschie/arm-cortex-m0-cmake.git`

Erstellen des Build Mittels CMake Presets:
```cmake --preset arm-cortex-m0-unix```
oder
```cmake --preset arm-cortex-m0-mingw```

Bauen Mittels CMake Presets:
```cmake --build --preset arm-cortex-m0```
oder
```cmake --build --preset arm-cortex-m0-mingw```

## IDEs
### Jetbrains CLion
Das Projekt kann direkt in der IDE geöffnet (ausgechecked) werden.
Die CMake Presets werden direkt als build-target angeboten

### Visual Studio Code

Folgende Extensions werden benötigt:
- jkearins.action-buttons-ext
- webfreak.debug
- maxmitti.cmake-tools-fork
- twxs.cmake
- dan-c-underwood.arm

Diese sind ebenfalls als empfohlene Extensions im Workspace definiert.

Nach Installation erkennt VScode die CMake Presets und bietet diese gleich an.
Ebenfalls wird in der Statusleiste ein Button **Start Qemu** hinzugefügt,
über diesen die QEmu-Session (also unser Target) gestartet werden kann.