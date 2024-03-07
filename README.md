# Docker Forensic Toolbox

![Whale](https://github.com/MikeHorn-git/docker-forensic-toolbox/assets/123373126/b6897176-b7dd-4cec-ae55-9bcdc93c6e12)

# Informations
* Credential : forensic:forensic
* From : Debian Bookworm Slim.
* Size : Around 900MB.
* Time : Few minutes to build. Depending on your system.
* Trivy : 0 unfixed vulnerabilities.

# Installation
```bash
git clone https://github.com/MikeHorn-git/docker-forensic-toolbox.git
cd docker-forensic-toolbox
```
## Docker Compose
```bash
sudo docker-compose up -d
```

## Dockerfile
```bash
sudo docker build -t "dft" .
```

# Tools
* [aLEAPP](https://github.com/abrignoni/ALEAPP)                       - Android Logs Events And Protobuf Parser.
* [Binwalk](https://github.com/ReFirmLabs/binwalk)                    - Firmware Analysis Tool.
* [Exiftool](https://github.com/exiftool/exiftool)                    - ExifTool meta information reader/writer.
* [Ewf-tools](https://github.com/libyal/libewf)                       - Library to access the Expert Witness Compression Format.
* [Foremost](https://github.com/korczis/foremost)                     - File carving.
* [File](https://packages.debian.org/bookworm/file)                   - Recognize the type of data in a file using "magic" numbers.
* [Hindsights](https://github.com/obsidianforensics/hindsight)        - Web browser forensics for Google Chrome/Chromium.
* [iLEAPP](https://github.com/abrignoni/iLEAPP)                       - IOS Logs, Events, And Plist Parser.
* [Loki](https://github.com/Neo23x0/Loki)                             - Simple IOC and YARA Scanner.
* [Mac-robber](https://www.kali.org/tools/mac-robber/)                - Collects data from allocated files in a mounted file system.
* [Mvtt](https://github.com/mvt-project/mvt)                           - Conducting forensics of mobile devices in order to find signs of a potential compromise.
* [Nano](https://www.nano-editor.org/)                                - Small, friendly text editor inspired by Pico.
* [Ntfs-3g](https://github.com/tuxera/ntfs-3g)                        - Safe Read/Write NTFS Driver.
* [Parted](https://wiki.archlinux.org/title/Parted)                   - A program for creating, destroying, resizing, checking and copying partitions.
* [Python-evt](https://github.com/williballenthin/python-evt)         - Pure Python parser for classic Windows Event Log files (.evt).
* [Python-ntfs](https://github.com/williballenthin/python-ntfs)       - Open source Python library for NTFS analysis.
* [Recuperabit](https://github.com/Lazza/RecuperaBit)                 - A tool for forensic file system reconstruction.
* [Regripper](https://github.com/keydet89/RegRipper3.0)               - RegRipper is an open source forensic software used as a Windows Registry data extraction tool.
* [Sleuthkit](https://github.com/sleuthkit/sleuthkit)                 - Library and collection of command line digital forensics tools.
* [Stegoveritas](https://github.com/bannsec/stegoVeritas)             - Yet another Stego Tool.
* [Tshark](https://www.wireshark.org/docs/man-pages/tshark.html)      - Dump and analyze network traffic.
* [Vim](https://www.vim.org/)                                         - Vi Improved, a highly configurable, improved version of the vi text editor.
* [Volatility3](https://github.com/volatilityfoundation/volatility3)  - Advanced memory forensics framework.
* [Xmount](https://www.pinguin.lu/xmount)                             - Tool to crossmount between multiple input and output harddisk image files.
* [Yara](https://github.com/VirusTotal/yara)                          - The pattern matching swiss knife.

# Security
* The forensic Docker image is scanned with [trivy](https://github.com/aquasecurity/trivy) to improve security.
* Install [docker-bench-security](https://github.com/docker/docker-bench-security) for hardening your host.

# Versions 1.2
* Add docker-compose.yml.

# Versions 1.1
* Add new tools (iLEAPP, python-evt, python-ntfs).
* Add security sections and update protobof version for patch vulns [CVE-2021-22570 and CVE-2022-1941] detected with trivy.
* Delete tools.txt.
* Remove miscellaneous tools (htop, john, ssdeep) for a lighter image.
