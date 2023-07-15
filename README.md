# Docker forensic toolbox

![Whale](https://github.com/MikeHorn-git/docker-forensic-toolbox/assets/123373126/b6897176-b7dd-4cec-ae55-9bcdc93c6e12)

# Informations
* Credential : forensic:forensic
* From : Debian Bookworm
* Size : Around 750MB
* Time : Few minutes to build


# Installation
```bash
git clone htps://github.com/MikeHorn-git/docker-forensic-toolbox.git
cd docker-forensic-toolbox
docker build -t "forensic" .
docker images
# docker run -it $Image ID
```


# Tools
FORENSIC
* [alleap](https://github.com/abrignoni/ALEAPP) Android Logs Events And Protobuf Parser
* [binwalk](https://github.com/ReFirmLabs/binwalk) Firmware Analysis Tool
* [ewf-tools](https://github.com/libyal/libewf) Library to access the Expert Witness Compression Format 
* [foremost](https://github.com/korczis/foremost) File carving
* [hindsights](https://github.com/obsidianforensics/hindsight) Web browser forensics for Google Chrome/Chromium
* [mac-robber](https://www.kali.org/tools/mac-robber/) Collects data from allocated files in a mounted file system
* [mvt](https://github.com/mvt-project/mvt) Conducting forensics of mobile devices in order to find signs of a potential compromise
* [ntfs-3g](https://github.com/tuxera/ntfs-3g) Safe Read/Write NTFS Driver 
* [parted](https://wiki.archlinux.org/title/Parted) A program for creating, destroying, resizing, checking and copying partitions
* [recuperabit](https://github.com/Lazza/RecuperaBit) A tool for forensic file system reconstruction
* [regripper](https://github.com/keydet89/RegRipper3.0) RegRipper is an open source forensic software used as a Windows Registry data extraction tool
* [sleuthkit](https://github.com/sleuthkit/sleuthkit) Library and collection of command line digital forensics tools
* [tashark](https://www.wireshark.org/docs/man-pages/tshark.html)  Dump and analyze network traffic
* [volatility3](https://github.com/volatilityfoundation/volatility3) Advanced memory forensics framework
* [xmount](https://www.pinguin.lu/xmount) Tool to crossmount between multiple input and output harddisk image files

MISCELLANEOUS
* [htop](https://github.com/htop-dev/htop) Interactive process viewer
* [john the ripper](https://github.com/openwall/john) Advanced offline password cracker
* [loki](https://github.com/Neo23x0/Loki) Simple IOC and YARA Scanner
* [stegoveritas](https://github.com/bannsec/stegoVeritas) Yet another Stego Tool
* [ssdeep](https://www.kali.org/tools/ssdeep/) A program for computing context triggered piecewise hashes
* [vim](https://www.vim.org/) Vi Improved, a highly configurable, improved version of the vi text editor
* [yara](https://github.com/VirusTotal/yara)  The pattern matching swiss knife 
