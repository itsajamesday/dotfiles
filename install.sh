#!/bin/bash
wget https://github.com/itsajamesday/dotfiles/blob/master/apacheport.sh
wget https://www.privateinternetaccess.com/installer/port_forward.sh
mv $HOME/Downloads/port_foward.sh $HOME/port_forward.sh
mv $HOME/Downloads/apacheport.sh $HOME/apacheport.sh
chmod +x port_forward.sh
chmod +x apacheport.sh
deb "alias externalip="wget http://ipinfo.io/ip -qO -"" >> .bashrc
deb "alias port="$HOME/port_forward.sh p2768382 jiuo9y96"" >> .bashrc
deb "alias cleanapache="rm /var/www/*"" >> .bashrc

