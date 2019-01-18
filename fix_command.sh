#!/bin/bash
sudo echo 'alias aboutip="perl ip.pl"' >> ~/.bashrc
. ~/.bashrc
echo
echo
echo Fixed!
exec bash
