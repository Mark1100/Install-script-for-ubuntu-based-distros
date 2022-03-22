#!/bin/bash

desktop_path=$(xdg-user-dir DESKTOP)

sudo apt-get update
sudo apt-get upgrade -y

#PPA--------------------------------------
sudo add-apt-repository -y ppa:inkscape.dev/stable
sudo add-apt-repository -y ppa:team-xbmc/ppa
sudo add-apt-repository -y ppa:lutris-team/lutris
sudo add-apt-repository -y ppa:appimagelauncher-team/stable
sudo add-apt-repository -y ppa:papirus/papirus
sudo add-apt-repository -y ppa:obsproject/obs-studio
sudo add-apt-repository -y ppa:yannubuntu/boot-repair
sudo add-apt-repository -y ppa:danielrichter2007/grub-customizer
#PPA--------------------------------------

sudo apt-get update

#APT--------------------------------------
sudo apt-get install -y freecad cura grub-customizer system-config-printer-gnome cups printer-driver-cups-pdf hplip system-config-printer vlc blender curl synaptic firefox firefox-locale-hu wget filezilla catfish ark hardinfo zsh hardinfo filelight gparted okular gdebi qalculate-gtk youtube-dl thunderbird obs-studio audacity handbrake transmission network-manager-openvpn numlockx pinta language-pack-gnome-hu openvpn gimp git piper tcpdump gimp-gmic kmines clementine tar hddtemp lm-sensors screen openssh-client openssh-server muon ksysguard krita xfce4-whiskermenu-plugin htop openjdk-8-jdk mysql-client php unzip p7zip sudo jarwrapper openjdk-8-jre kio-gdrive gnome-disk-utility net-tools xfce4-indicator-plugin papirus-icon-theme krita-gmic xfce4-goodies appimagelauncher ipheth-utils libreoffice libreoffice-writer libreoffice-calc libreoffice-impress libreoffice-math libreoffice-draw doublecmd-common timeshift remmina mc ffmpeg lutris gedit virt-manager steam bless inkscape xrdp ntp sassc boot-repair terminator kdenlive software-properties-common kodi gnome-system-monitor redshift-gtk cool-retro-term

sudo systemctl start cups

#XRDP----------------------------------------

#sudo rm /etc/xrdp/startwm.sh
#sudo wget -O /etc/xrdp/startwm.sh https://raw.githubusercontent.com/Mark1100/Mark_programs/master/startwm.sh

#XRDP----------------------------------------

#APT-----------------------------------------

echo neofetch >> ~/.bashrc

#MANUAL---------------------------------------
mkdir ~/installer-temp/
mkdir $desktop_path/Utils

#THEME----------------------------------------
mkdir ~/installer-temp/orchis
git clone https://github.com/vinceliuice/Orchis-theme.git ~/installer-temp/orchis
chmod +x ~/installer-temp/orchis/install.sh
bash ~/installer-temp/orchis/install.sh
#THEME----------------------------------------

wget -O ~/installer-temp/discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
sudo dpkg -i ~/installer-temp/discord.deb

wget -O ~/installer-temp/komorebi.deb "https://github.com/cheesecakeufo/komorebi/releases/download/v2.1/komorebi-2.1-64-bit.deb"
sudo dpkg -i ~/installer-temp/komorebi.deb

wget -O ~/installer-temp/heroic.deb "https://github.com/Heroic-Games-Launcher/HeroicGamesLauncher/releases/download/v2.0.1/heroic_2.0.1_amd64.deb"
sudo dpkg -i ~/installer-temp/heroic.deb

wget -O ~/installer-temp/chrome.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i ~/installer-temp/chrome.deb

wget -O ~/installer-temp/fdm.deb https://dn3.freedownloadmanager.org/6/latest/freedownloadmanager.deb
sudo dpkg -i ~/installer-temp/fdm.deb

wget -O ~/installer-temp/blobsaver.deb https://github.com/airsquared/blobsaver/releases/download/v3.0.4/blobsaver_3.0.4-1_amd64.deb
sudo dpkg -i ~/installer-temp/blobsaver.deb

wget -O ~/installer-temp/vscode.deb https://go.microsoft.com/fwlink/?LinkID=760868 
sudo dpkg -i ~/installer-temp/vscode.deb

wget -O ~/installer-temp/Minecraft-raw.zip https://tlauncher.org/jar
unzip ~/installer-temp/Minecraft-raw.zip -d ~/installer-temp/
cp ~/installer-temp/TLaunch* $desktop_path/Utils/Minecraft.jar
chmod +x $desktop_path/Utils/Minecraft.jar

touch $desktop_path/Utils/Update.sh
echo '#!/bin/bash' >> $desktop_path/Utils/Update.sh
echo "sudo apt update" >> $desktop_path/Utils/Update.sh
echo "sudo apt upgrade -y" >> $desktop_path/Utils/Update.sh
echo "sudo apt full-upgrade -y" >> $desktop_path/Utils/Update.sh
echo "sudo apt dist-upgrade -y" >> $desktop_path/Utils/Update.sh
chmod +x $desktop_path/Utils/Update.sh

curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update
sudo apt-get install -y spotify-client

wget -O- https://updates.signal.org/desktop/apt/keys.asc | gpg --dearmor > signal-desktop-keyring.gpg
cat signal-desktop-keyring.gpg | sudo tee -a /usr/share/keyrings/signal-desktop-keyring.gpg > /dev/null
echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/signal-desktop-keyring.gpg] https://updates.signal.org/desktop/apt xenial main' |\
sudo tee -a /etc/apt/sources.list.d/signal-xenial.list
sudo apt-get update 
sudo apt-get install -y signal-desktop

wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install -y apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install -y sublime-text

wget -O ~/installer-temp/multimc.deb https://files.multimc.org/downloads/multimc_1.6-1.deb
sudo dpkg -i ~/installer-temp/multimc.deb

wget -O ~/installer-temp/viber.deb https://download.cdn.viber.com/cdn/desktop/Linux/viber.deb
sudo dpkg -i ~/installer-temp/viber.deb

wget -O ~/installer-temp/tabby.deb https://github.com/Eugeny/tabby/releases/download/v1.0.169/tabby-1.0.169-linux.deb
sudo dpkg -i ~/installer-temp/tabby.deb

echo 'deb https://assets.checkra.in/debian /' | sudo tee /etc/apt/sources.list.d/checkra1n.list
sudo apt-key adv --fetch-keys https://assets.checkra.in/debian/archive.key
sudo apt-get update
sudo apt-get install -y checkra1n

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys CB2DE8E5
echo 'deb https://download.onlyoffice.com/repo/debian squeeze main' | sudo tee -a /etc/apt/sources.list.d/onlyoffice.list
sudo apt-get update
sudo apt-get install -y onlyoffice-desktopeditors

wget -O ~/installer-temp/visualbukkit.sh https://github.com/OfficialDonut/VisualBukkit/releases/download/4.3.1/VisualBukkit_unix_4_3_1.sh
sudo chmod +x ~/installer-temp/visualbukkit.sh
#sudo sh /home/installer-temp/visualbukkit.sh

sudo apt install apt-transport-https curl
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install -y brave-browser

wget -O ~/installer-temp/teamviewer.deb https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
sudo dpkg -i ~/installer-temp/teamviewer.deb

wget -O ~/installer-temp/virtualbox.deb "https://download.virtualbox.org/virtualbox/6.1.30/virtualbox-6.1_6.1.30-148432~Ubuntu~eoan_amd64.deb"
sudo dpkg -i ~/installer-temp/virtualbox.deb

#MANUAL------------------------------------------

sudo apt --fix-broken -y install

sudo apt update
sudo apt upgrade -y
sudo apt dist-upgrade -y
sudo apt full-upgrade -y

#nVidia driver 470 verzio-----------------
sudo apt-get install nvidia-driver-470
#nVidia driver 470 verzio-----------------

sudo sh ~/installer-temp/visualbukkit.sh

sudo apt autoremove -y

clear
echo Lefutott minden!

echo Default hangeszkoz
echo alsamixer-ben F6 es maxra a hangerot
echo pacmd list-sinks | grep -e 'name:' -e 'index:'
echo /etc/pulse/default.pa--------set-default-sink ESZKOZ-NEVE
echo -------------------
echo appimage: etcher openrgb
echo Default alkalmazasok
echo Oh-my-ZSH install es powerlevel10k
echo grub2 tema
echo Majd ujrainditas
