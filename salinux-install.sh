#!/bin/bash

# Install Basic software
apt install remmina nmap wireshark -y

# Install zenmap 
cd /tmp
wget http://archive.ubuntu.com/ubuntu/pool/universe/p/pygtk/python-gtk2_2.24.0-5.1ubuntu2_amd64.deb
apt install ./python-gtk2_2.24.0-5.1ubuntu2_amd64.deb -y 
wget http://archive.ubuntu.com/ubuntu/pool/universe/n/nmap/zenmap_7.60-1ubuntu5_all.deb
apt install ./zenmap_7.60-1ubuntu5_all.deb -y


# Make scripts directory
if [ ! -d "/opt/sa-scripts" ]; then
    echo "Creating /opt/sa-scripts"
    mkdir -p /opt/sa-scripts
fi

# Make icons directory
if [ ! -d "/opt/sa-icons" ]; then
    echo "Creating /opt/sa-icons"
    mkdir -p /opt/sa-icons
fi

#### Download Scripts

cd /opt/sa-scripts

# unifi script
wget https://get.glennr.nl/unifi/install/unifi-7.1.61.sh
chmod +x unifi-7.1.61.sh

wget https://blog.ui.com/wp-content/uploads/2016/10/unifi-app-logo.png
mv unifi-app-logo.png /opt/sa-icons/unifi-app-logo.png

unificfg="$(cat << EOF
[Desktop Entry]
Type=Application
Terminal=true
Name=Unifi Install
Icon=/opt/sa-icons/unifi-app-logo.png
Exec=lxtermial -e sudo /opt/sa-scripts/unifi-7.1.61.sh
EOF
)"
echo "${unificfg}" > /usr/share/applications/UnifiInstall.desktop

# Tactical RMM script
wget https://raw.githubusercontent.com/amidaware/tacticalrmm/master/install.sh
mv install.sh trmm-install.sh
chmod +x trmm-install.sh

wget https://www.saashub.com/images/app/service_logos/194/2lt18chm8vc7/large.png
mv large.png /opt/sa-icons/trmm-logo.png

trmmcfg="$(cat << EOF
[Desktop Entry]
Type=Application
Terminal=true
Name=Tactical RMM Install
Icon=/opt/sa-icons/trmm-logo.png
Exec=/opt/sa-scripts/trmm-install.sh
EOF
)"
echo "${trmmcfg}" > /usr/share/applications/TRMMInstall.desktop

# Omada Script Plan
# https://patrickdomingues.com/2021/05/07/install-tp-link-omada-sdn-controller-on-ubuntu-20-04-2/

# Install Filebeat
curl -L -O https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-oss-7.15.1-amd64.deb
sudo dpkg -i filebeat-oss-7.15.1-amd64.deb
