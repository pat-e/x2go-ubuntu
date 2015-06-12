#!/bin/bash

# Check if the script is being run as root 

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

# Update repositories and upgrade packages

apt-get update

# Add x2go ppa; update repo db

add-apt-repository -y ppa:x2go/stable

apt-get -y update

# Install xfce4

apt-get -y install xfce4

# Install ubuntu software center

apt-get -y install software-center

# Install x2goserver

apt-get -y install x2goserver*

# Start x2goserver

service x2goserver start

echo "The server has now been setup. To connect to it, please use x2goclient, available from here : http://wiki.x2go.org/doku.php/doc:installation:x2goclient \n"
echo "Please login using your root credentials when using x2goclient; choose xfce as the desktop environment"
