#!/bin/bash
sudo echo 'alias aboutip="perl ip.pl"' >> ~/.bashrc
. ~/.bashrc
COL='\033[1;33m'
NC='\033[0m'
echo
echo -e "${COL}Fixed!${NC}"
exec bash
