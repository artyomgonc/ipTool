#!/bin/bash
COL='\033[1;33m'
NC='\033[0m'
sudo echo -e "${COL}Starting...${NC}"
echo
echo
cp ip.pl ../ip.pl
cd ..
chmod +x ip.pl
sudo apt-get install -y cpan
sudo apt-get install -y liblocal-lib-perl
sudo apt-get install -y libjson-perl
sudo cpan install -y YAML
sudo cpan install -y WWW::Mechanize
sudo echo 'alias aboutip="perl /etc/ip.pl"' >> ~/.bashrc
. ~/.bashrc
echo  
echo  
echo -e "${COL} Done! To start programm print: aboutip [ip or domain]${NC}"
echo
echo 
rm -r ./ipTool
sudo mv ip.pl /etc/ip.pl
exec bash
