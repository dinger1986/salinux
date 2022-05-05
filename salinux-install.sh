#!/bin/bash

# Install NMap remmina and Wireshark
apt install remmina nmap wireshark -y

# Add run as root for wireshark
wiresharkcfg="$(cat << EOF
[Desktop Entry]
# The format of this file is specified at
# https://specifications.freedesktop.org/desktop-entry-spec/1.0/
# The entries are in the order they are listed in version 1.0
Type=Application
# This is the version of the spec for this file, not the application version.
Version=1.0
Name=Wireshark (as root)
Name[vi]=Wireshark (as root)
GenericName=Network Analyzer
GenericName[af]=Netwerk Analiseerder
GenericName[az]=ÅÉbÉkÉ Analiz ProqramÄ±
GenericName[bg]=ÐÐ½Ð°Ð»Ð¸Ð·Ð°ÑÐ¾Ñ Ð½Ð° Ð¼ÑÐµÐ¶Ð¾Ð²Ð¸ ÑÑÐ°ÑÐ¸Ðº
GenericName[bs]=MreÅ¾ni analizer
GenericName[ca]=Analitzador de xarxa
GenericName[cs]=AnalyzÃ¡tor sÃ­tÄ
GenericName[da]=NetvÃ¦rksanalyse
GenericName[de]=Programm fÃ¼r die Netzwerk-Analyse
GenericName[el]=ÎÎ½Î±Î»ÏÏÎ®Ï ÎÎ¹ÎºÏÏÏÎ½
GenericName[en_GB]=Network Analyser
GenericName[eo]=Retanalizilo
GenericName[es]=Analizador de redes
GenericName[et]=VÃµrguliikluse analÃ¼saator
GenericName[eu]=Sare ikerketaria
GenericName[fa]=ØªØ­ÙÛÙâÚ¯Ø± Ø´Ø¨Ú©Ù
GenericName[fi]=Verkkoanalysaattori
GenericName[fr]=Analyseur rÃ©seau
GenericName[he]=××××× ×¨×©×ª
GenericName[hr]=Program za analiziranje mreÅ¾a
GenericName[hu]=hÃ¡lÃ³zatanalizÃ¡lÃ³
GenericName[id]=Analisis jaringan
GenericName[is]=NetskoÃ°unartÃ³l
GenericName[it]=Analizzatore di rete
GenericName[ja]=ãããã¯ã¼ã¯ã¢ãã©ã¤ã¶
GenericName[ko]=ë¤í¸ìí¬ ë¶ìê¸°
GenericName[lo]=à»àºàº·à»àº­àºàº¡àº·àº§àº´à»àºàº²àº°à»àºàº·àº­àºà»àº²àº
GenericName[lt]=Tinklo analizatorius
GenericName[lv]=TÄ«kla Analizators
GenericName[mk]=ÐÐ½Ð°Ð»Ð¸Ð·Ð°ÑÐ¾Ñ Ð½Ð° Ð¼ÑÐµÐ¶Ð¸
GenericName[mn]=Ð¡Ò¯Ð»Ð¶ÑÑ-ÑÐ¸Ð½Ð¶Ð»ÑÐ»Ð¸Ð¹Ð½ Ð¿ÑÐ¾Ð³ÑÐ°Ð¼
GenericName[mt]=Analizzatur tan-network
GenericName[nb]=Nettverksanalysator
GenericName[nl]=netwerkanalyseprogramma
GenericName[nn]=Nettverksanalysator
GenericName[nso]=Moahlaahli wa Kgokagano
GenericName[pl]=Analizator sieci
GenericName[pt]=Analisador de Redes
GenericName[pt_BR]=Analisador de rede
GenericName[ro]=Analizor de reÅ£ea
GenericName[ru]=ÐÐ½Ð°Ð»Ð¸Ð·Ð°ÑÐ¾Ñ ÑÐµÑÐµÐ²Ð¾Ð³Ð¾ ÑÑÐ°ÑÐ¸ÐºÐ°
GenericName[se]=Fierbmeanalysa
GenericName[sk]=AnalyzÃ¡tor siete
GenericName[sl]=Analizator omreÅ¾ij
GenericName[sr]=Analizatror mreÅ¾e
GenericName[ss]=Sihlatiyi seluchungechunge
GenericName[sv]=NÃ¤tverksanalyserare
GenericName[ta]=ÃÂ¨Ã Â¬Ã¶ÃÂ¡ÃÃ·
GenericName[th]=à¹à¸à¸£à¸·à¹à¸­à¸à¸¡à¸·à¸­à¸§à¸´à¹à¸à¸£à¸²à¸°à¸«à¹à¹à¸à¸£à¸·à¸­à¸à¹à¸²à¸¢
GenericName[tr]=AÄ Analiz ProgramÄ±
GenericName[uk]=ÐÐ½Ð°Ð»ÑÐ·Ð°ÑÐ¾Ñ Ð¼ÐµÑÐµÐ¶Ñ
GenericName[ven]=Musengulusi wa Vhukwamani
GenericName[vi]=TrÃ¬nh phÃ¢n tÃ­ch  máº¡ng
GenericName[xh]=Umcukucezi Womsebenzi womnatha
GenericName[zh_CN]=ç½ç»åæç¨åº
GenericName[zh_TW]=ç¶²è·¯åæç¨å¼
GenericName[zu]=Umhloli Woxhumano olusakazekile
Comment=Network traffic analyzer
Comment[fi]=Verkkoliikenne analysaattori
Comment[fr]=Analyseur de trafic rÃ©seau
Comment[sv]=NÃ¤tverkstrafikanalysator
Comment[af]=Netwerkverkeer analiseerder
Comment[sq]=Analizues i trafikut tÃ« rrjetit
Comment[ast]=Analizador de trÃ¡ficu de rede
Comment[bn]=à¦¨à§à¦à¦à§à¦¾à¦°à§à¦ à¦à§à¦°à¦¾à¦«à¦¿à¦ à¦¬à¦¿à¦¶à§à¦²à§à¦·à¦
Comment[bg]=ÐÐ½Ð°Ð»Ð¸Ð·Ð°ÑÐ¾Ñ Ð½Ð° Ð¼ÑÐµÐ¶Ð¾Ð²Ð¸Ñ ÑÑÐ°ÑÐ¸Ðº
Comment[bs]=Analizator mreÅ¾noga prometa
Comment[pt_BR]=Analisador de trÃ¡fego de rede
Comment[et]=VÃµrguliikluse analÃ¼Ã¼sija
Comment[nl]=Netwerkverkeer analyseren
Comment[da]=NetvÃ¦rkstrafikanalyse
Comment[cs]=AnalyzÃ¡tor sÃ­Å¥ovÃ©ho pÅenosu
Comment[gl]=Analizador do trÃ¡fico de rede
Comment[el]=ÎÎ½Î¬Î»ÏÏÎ· ÎºÎ¯Î½Î·ÏÎ·Ï Î´Î¹ÎºÏÏÎ¿Ï
Comment[de]=Netzwerkverkehr-Analyseprogramm
Comment[hu]=HÃ¡lÃ³zatiforgalom-elemzÅ
Comment[it]=Analizzatore del traffico di rete
Comment[ja]=ãããã¯ã¼ã¯ãã©ãã£ãã¯ã¢ãã©ã¤ã¶ã¼
Comment[ko]=ë¤í¸ìí¬ í¸ëí½ ë¶ìê¸°
Comment[ky]=Ð¢Ð°ÑÐ¼Ð°ÐºÑÑÐº ÑÑÐ°ÑÐ¸ÐºÑÐ¸ Ð°Ð½Ð°Ð»Ð¸Ð·Ð´Ó©Ó©
Comment[lt]=Tinklo duomenÅ³ srauto analizatorius
Comment[ms]=Penganalisa trafik rangkaian
Comment[nb]=Nettverkstrafikk-analysator
Comment[oc]=Analisador de tramas de ret
Comment[pt]=Analisador de trÃ¡fego da rede
Comment[pl]=Analizator ruchu sieciowego
Comment[ro]=Analizator trafic de reÈea
Comment[ru]=ÐÐ½Ð°Ð»Ð¸Ð· ÑÐµÑÐµÐ²Ð¾Ð³Ð¾ ÑÑÐ°ÑÐ¸ÐºÐ°
Comment[sk]=AnalyzÃ¡tor sieÅ¥ovej premÃ¡vky
Comment[es]=Analizador de trÃ¡fico de red
Comment[sl]=PreuÄevalnik omreÅ¾nega prometa
Comment[tr]=AÄ trafiÄi Ã§Ã¶zÃ¼mleyicisi
Comment[vi]=TrÃ¬nh phÃ¢n tÃ­ch giao thÃ´ng máº¡ng
Comment[uk]=ÐÐ½Ð°Ð»ÑÐ·Ð°ÑÐ¾Ñ Ð¼ÐµÑÐµÐ¶ÐµÐ²Ð¾Ð³Ð¾ ÑÑÐ°ÑÑÐºÑ
Icon=wireshark
TryExec=su-to-root
Exec=su-to-root -X -c wireshark %F
Terminal=false
MimeType=application/vnd.tcpdump.pcap;application/x-pcapng;application/x-snoop;application/x-iptrace;application/x-lanalyzer;application/x-nettl;application/x-radcom;application/x-etherpeek;application/x-visualnetworks;application/x-netinstobserver;application/x-5view;application/x-tektronix-rf5;application/x-micropross-mplog;application/x-apple-packetlogger;application/x-endace-erf;application/ipfix;application/x-ixia-vwr;
# Category entry according to:
# https://specifications.freedesktop.org/menu-spec/1.0/
Categories=Network;Monitor;Qt;
EOF
)"
echo "${wiresharkcfg}" > /usr/share/applications/wireshark-root.desktop

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
TryExec=su-to-root
Exec=su-to-root -X -c /opt/sa-scripts/unifi-7.1.61.sh %F
EOF
)"
echo "${unificfg}" > /usr/share/applications/UnifiInstall.desktop

# Omada Script Plan
# https://patrickdomingues.com/2021/05/07/install-tp-link-omada-sdn-controller-on-ubuntu-20-04-2/

# Install Filebeat
cd /tmp
wget https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-oss-7.15.1-amd64.deb
apt install ./filebeat-oss-7.15.1-amd64.deb -y
