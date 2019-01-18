#!/bin/bash
sudo echo 'alias aboutip="perl ip.pl"' >> ~/.bashrc
. ~/.bashrc
RED='\033[1;33m'
NC='\033[0m'
echo
echo
echo -e "${RED}Fixed!${NC}"
exec bash
