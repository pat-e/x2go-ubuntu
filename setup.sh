#!/bin/bash

# Update repositories and upgrade packages

sudo apt-get update

sudo apt-get install -y software-properties-common

# Add x2go ppa; update repo db

sudo add-apt-repository -y ppa:x2go/stable

sudo apt-get -y update

# Install xfce4

sudo apt-get -y install xfce4

# Install ubuntu software center

sudo apt-get -y install software-center
sudo apt-get -y install synaptic

# Install x2goserver

sudo apt-get -y install x2goserver*

# Start x2goserver

sudo service x2goserver start

echo "The server has now been setup. To connect to it, please use x2goclient, available from here : http://wiki.x2go.org/doku.php/doc:installation:x2goclient \n"
