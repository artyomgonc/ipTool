#!/bin/bash
sudo echo 'alias aboutip="perl ip.pl"' >> ~/.bashrc
. ~/.bashrc
echo Fixed!
exec bash
