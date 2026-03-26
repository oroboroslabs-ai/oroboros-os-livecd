# OROBOROS OS V1.0 - Live CD

Bootable Live CD with Windows 11 familiar interface and OROBOROS AI Engine.

## Download

Download all 5 parts and rejoin:
```bash
cat OROBOROS-OS-V1.0-Live.part_* > OROBOROS-OS-V1.0-Live.iso
```

## Requirements

- CPU: 4+ cores (8+ recommended)
- RAM: 8 GB minimum (16+ GB recommended)
- USB: 32 GB+ for bootable

## Create Bootable USB

**Windows:** Use Rufus or balenaEtcher

**Linux:** 
```bash
sudo dd if=OROBOROS-OS-V1.0-Live.iso of=/dev/sdX bs=4M status=progress
sync
```

## SHA256 Verification

```
27ebaf93a70d20346de4f8c89e09872f953f4efb9169166dde2404bdc1a4277a
```

## Features

- Windows 11 familiar interface (Winux base)
- KDE Plasma 6 desktop
- OROBOROS AI Engine (Level 99)
- Ollama AI runtime included
- Persistent storage support
- No installation required

Copyright 2024-2026 Oroboros Labs
