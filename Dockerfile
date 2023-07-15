from debian:bookworm-slim

ENV DEBIAN_FRONTEND noninteractive


RUN apt-get update &&                             \
    apt-get -y upgrade &&                         \
    apt-get install -y --no-install-recommends    \
        bash-completion                           \
        file                                      \
        htop                                      \
        mac-robber                                \
        ntfs-3g                                   \
        parted                                    \
        ssdeep                                    \
        sudo                                      \
        unzip                                     \
        vim                                       \
        wget                                      \
        xz-utils                                  \
        python3-pip                               \
        python3-tk                                \
        python3-yara                              \
        binwalk                                   \
        ewf-tools                                 \
        foremost                                  \
        john                                      \
        regripper                                 \
        sleuthkit                                 \
        tshark                                    \
        xmount                                    \
        yara &&                                   \
    rm -rf /var/cache/apt/archives/*deb /var/lib/apt/lists/*


RUN groupadd -r user &&                           \
    useradd -m -s /bin/bash -r -g root -G sudo forensic &&  \
    echo 'forensic:forensic' | chpasswd

RUN mkdir /tools
WORKDIR   /tools


RUN pip3 install pyhindsight --no-cache-dir --break-system-packages &&  \
    rm /usr/local/bin/hindsight_gui.py &&                               \
    chmod +x /usr/local/bin/hindsight.py &&                             \
    mv /usr/local/bin/hindsight.py /usr/local/bin/hindsight

RUN pip3 install stegoveritas --no-cache-dir --break-system-packages && \
    stegoveritas_install_deps


RUN wget https://github.com/abrignoni/ALEAPP/archive/refs/heads/main.zip &&     \
    unzip main.zip &&                                                           \
    cd ALEAPP-main &&                                                           \
    rm aleappGUI.* &&                                                           \
    pip3 install -r requirements.txt --no-cache-dir --break-system-packages &&  \
    cd .. &&                                                                    \
    mv ALEAPP-main ALEAPP &&                                                    \
    rm -rf ./main.zip

RUN wget https://github.com/Neo23x0/Loki/archive/refs/heads/master.zip &&       \
    unzip master.zip &&                                                         \
    mv Loki-master Loki &&                                                      \
    rm -rf ./master.zip

RUN wget https://github.com/mvt-project/mvt/archive/refs/heads/main.zip &&      \
    unzip main.zip &&                                                           \
    cd mvt-main &&                                                              \
    pip3 install . --no-cache-dir --break-system-packages &&                    \
    cd .. &&                                                                    \
    rm -rf ./main.zip ./mvt-main.zip

RUN wget https://github.com/Lazza/RecuperaBit/archive/refs/heads/master.zip &&  \
    unzip master.zip &&                                                         \
    mv RecuperaBit-master RecuperaBit &&                                        \
    rm -rf ./master.zip

RUN wget https://github.com/volatilityfoundation/volatility3/archive/refs/heads/develop.zip &&  \
    unzip develop.zip &&                                                                        \
    cd volatility3-develop &&                                                                   \
    pip3 install -r requirements-minimal.txt --no-cache-dir --break-system-packages &&          \
    cd .. &&                                                                                    \
    mv volatility3-develop volatility3 &&                                                       \
    rm -rf ./develop.zip


USER forensic
ENTRYPOINT bash
