#!/bin/bash
sudo apt install jq unzip unrar wget curl nmap git partclone python-pip espeak mpg321 ntpdate python-all-dev portaudio19-dev

sudo wget https://yt-dl.org/downloads/latest/youtube-dl -O /usr/local/bin/youtube-dl
sudo chmod a+rx /usr/local/bin/youtube-dl

sudo pip install aiml
sudo pip install argparse
sudo pip install playsound
sudo pip uninstall gtts-token
sudo pip uninstall gtts
sudo pip install gtts-token
sudo pip install gtts
sudo pip install SpeechRecognition
sudo pip install pyaudio

sudo ln /etc/sexta/checkdns /usr/bin/checkdns
sudo ln /etc/sexta/checklan /usr/bin/checklan
sudo ln /etc/sexta/ddin /usr/bin/ddin
sudo ln /etc/sexta/ddout /usr/bin/ddout

sudo ln /etc/sexta/dnstest /usr/bin/dnstest
sudo ln /etc/sexta/hello /usr/bin/hello
sudo ln /etc/sexta/jailsys /usr/bin/jailsys
sudo ln /etc/sexta/lanspeed /usr/bin/lanspeed
sudo ln /etc/sexta/limpar /usr/bin/limpar

sudo ln /etc/sexta/mapear-ssh /usr/bin/mapear-ssh
sudo ln /etc/sexta/myip /usr/bin/myip
sudo ln /etc/sexta/PenRescue /usr/bin/PenRescue
sudo ln /etc/sexta/pinga /usr/bin/pinga
sudo ln /etc/sexta/Pow /usr/bin/Pow
sudo ln /etc/sexta/prevtempo /usr/bin/prevtempo
sudo ln /etc/sexta/Matematica /usr/bin/Matematica

sudo ln /etc/sexta/relatorio /usr/bin/relatorio
sudo ln /etc/sexta/relatoriohd /usr/bin/relatoriohd
sudo ln /etc/sexta/removeMySQL /usr/bin/removeMySQL
sudo ln /etc/sexta/reparar /usr/bin/reparar
sudo ln /etc/sexta/scan /usr/bin/scan
sudo ln /etc/sexta/scanrede /usr/bin/scanrede
sudo ln /etc/sexta/sexta /usr/bin/sexta

sudo ln /etc/sexta/syncTime /usr/bin/syncTime
sudo ln /etc/sexta/tar2 /usr/bin/tar2
sudo ln /etc/sexta/unapk /usr/bin/unpak
sudo ln /etc/sexta/untar2 /usr/bin/untar2
sudo ln /etc/sexta/usbext4 /usr/bin/usbext4
sudo ln /etc/sexta/utf8Conv /usr/bin/utf8Conv
sudo ln /etc/sexta/ytmp3 /usr/bin/ytmp3
sudo ln /etc/sexta/ytmp4 /usr/bin/ytmp4
sudo ln /etc/sexta/RecuperaGrub /usr/bin/RecuperaGrub
