#!/bin/bash
#Forge Server Setup

#GPL-3.0 LICENSE Copyright MysteryManYT-ttv 2026

GREEN=$'\033[1;32m'
YELLOW=$'\033[1;33m'
ENDCOLOR=$'\033[0m'
RED=$'\033[31m'


echo  ${GREEN} Downloading Forge version 1.20.1 ${ENDCOLOR}


wget -O ~/Documents/forge-1.20.1-47.4.10-installer.jar \
"maven.minecraftforge.net/net/minecraftforge/forge/1.20.1-47.4.10/forge-1.20.1-47.4.10-installer.jar"

echo ${YELLOW} Checking fo.r Java updates, If missing- openjdk-21-jdk Download will start. ${ENDCOLOR}
sudo apt install openjdk-21-jdk


mkdir -p "$HOME/Documents/Minecraft-Server"
cd "$HOME/Documents/Minecraft-Server"
java -jar "$HOME/Documents/forge-1.20.1-47.4.10-installer.jar" --installServer

echo ${RED} Install/Setup Finished ${ENDCOLOR}

echo  ${GREEN} Launching Server ${ENDCOLOR}
bash ~/Documents/Minecraft-Server/./run.sh
nano ~/Documents/Minecraft-Server/eula.txt
bash ~/Documents/Minecraft-Server/./run.sh





#-------------------------------------------------#
#                 END OF SCRIPT                   #
#-------------------------------------------------#


