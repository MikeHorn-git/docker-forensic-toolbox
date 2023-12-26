#  🐳Docker Forensic Toolbox

![Whale](https://github.com/MikeHorn-git/docker-forensic-toolbox/assets/123373126/b6897176-b7dd-4cec-ae55-9bcdc93c6e12)

# Informations
* Credential : forensic:forensic
* From : Debian Bookworm Slim
* Size : Around 750MB
* Time : Few minutes to build

# Installation
```bash
git clone htps://github.com/MikeHorn-git/docker-forensic-toolbox.git
cd docker-forensic-toolbox
sudo docker build -t "forensic" .
```

# Forensic tools
* [alleap](https://github.com/abrignoni/ALEAPP) Android Logs Events And Protobuf Parser.
* [binwalk](https://github.com/ReFirmLabs/binwalk) Firmware Analysis Tool.
* [ewf-tools](https://github.com/libyal/libewf) Library to access the Expert Witness Compression Format.
* [foremost](https://github.com/korczis/foremost) File carving.
* [file](https://packages.debian.org/bookworm/file) Recognize the type of data in a file using "magic" numbers.
* [hindsights](https://github.com/obsidianforensics/hindsight) Web browser forensics for Google Chrome/Chromium.
* [illeap](https://github.com/abrignoni/iLEAPP) iOS Logs, Events, And Plist Parser.
* [loki](https://github.com/Neo23x0/Loki) Simple IOC and YARA Scanner.
* [mac-robber](https://www.kali.org/tools/mac-robber/) Collects data from allocated files in a mounted file system.
* [mvt](https://github.com/mvt-project/mvt) Conducting forensics of mobile devices in order to find signs of a potential compromise.
* [nano](https://www.nano-editor.org/) Small, friendly text editor inspired by Pico.
* [ntfs-3g](https://github.com/tuxera/ntfs-3g) Safe Read/Write NTFS Driver.
* [parted](https://wiki.archlinux.org/title/Parted) A program for creating, destroying, resizing, checking and copying partitions.
* [python-evt](https://github.com/williballenthin/python-evt) Pure Python parser for classic Windows Event Log files (.evt).
* [python-ntfs](https://github.com/williballenthin/python-ntfs) Open source Python library for NTFS analysis.
* [recuperabit](https://github.com/Lazza/RecuperaBit) A tool for forensic file system reconstruction.
* [regripper](https://github.com/keydet89/RegRipper3.0) RegRipper is an open source forensic software used as a Windows Registry data extraction tool.
* [sleuthkit](https://github.com/sleuthkit/sleuthkit) Library and collection of command line digital forensics tools.
* [stegoveritas](https://github.com/bannsec/stegoVeritas) Yet another Stego Tool.
* [tshark](https://www.wireshark.org/docs/man-pages/tshark.html)  Dump and analyze network traffic.
* [vim](https://www.vim.org/) Vi Improved, a highly configurable, improved version of the vi text editor.
* [volatility3](https://github.com/volatilityfoundation/volatility3) Advanced memory forensics framework.
* [xmount](https://www.pinguin.lu/xmount) Tool to crossmount between multiple input and output harddisk image files.
* [yara](https://github.com/VirusTotal/yara) The pattern matching swiss knife.

# Security
* Install [docker-bench-security](https://github.com/docker/docker-bench-security) for hardening your host.

# Versions
1.1 
* Add new tools (iLEAPP, python-evt, python-ntfs).
* Delete tools.txt.
* Remove miscellaneous tools (htop, jhon, ssdeep) for lighter image.
