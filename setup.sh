#!/bin/bash

# Installs UberWriter if not previously installed
sudo add-apt-repository ppa:w-vollprecht/ppa
sudo apt-get update
sudo apt-get install uberwriter

# Replace ENTERYOURUSERNAMEHERE with your username
DIRE= "Exec= /home/ENTERYOURUSERNAMEHERE/YourDailyWrite/750words.sh"
DIRI= "Icon= /home/ENTERYOURUSERNAMEHERE/YourDailyWrite/journal.png"
mkdir ~/.local/share/applications

# Create Application Launcher and Entry
touch ~/.local/share/applications/YourDailyWrite.desktop
echo "[Desktop Entry]" >> ~/.local/share/applications/YourDailyWrite.desktop
echo "Name=YourDailyWrite" >> ~/.local/share/applications/YourDailyWrite.desktop
echo "Comment=" >> ~/.local/share/applications/YourDailyWrite.desktop
echo "$DIRE" >> ~/.local/share/applications/YourDailyWrite.desktop
echo "$DIRI" >> ~/.local/share/applications/YourDailyWrite.desktop
echo "Terminal=false" >> ~/.local/share/applications/YourDailyWrite.desktop
echo "Type=Application" >> ~/.local/share/applications/YourDailyWrite.desktop
echo "StartupNotify=true" >> ~/.local/share/applications/YourDailyWrite.desktop
