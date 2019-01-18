#!/bin/bash
sudo echo 'alias aboutip="perl ip.pl"' >> ~/.bashrc
. ~/.bashrc
RED='\033[0;31m'
echo
echo
echo -e "  ${RED}Fixed!${NC}"
exec bash
