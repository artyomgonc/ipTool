#!/bin/bash
sudo echo starting...
cp ip.pl ../ip.pl
cd ..
chmod +x ip.pl
sudo apt-get install -y cpan
sudo apt-get install -y liblocal-lib-perl
sudo apt-get install -y libjson-perl
sudo cpan install -y YAML
sudo cpan install -y WWW::Mechanize
sudo echo 'alias aboutip="perl ip.pl"' >> ~/.bashrc
. ~/.bashrc
echo  
echo  
echo  Done! To start programm print: aboutip [ip or domain]
echo
echo 
rm -r ./ipTool
exec bash
