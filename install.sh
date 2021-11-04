#!/bin/bash
echo "deb http://http.kali.org/kali kali-rolling main non-free contrib" > /etc/apt/sources.list.d/kali.list
apt update
apt install gpg
gpg --keyserver hkps://keys.openpgp.org --recv-key 44C6513A8E4FB3D30875F758ED444FF07D8D0BF6
gpg -a --export 44C6513A8E4FB3D30875F758ED444FF07D8D0BF6 | apt-key add -
apt update
apt install kali-linux-headless kali-linux-large -y
