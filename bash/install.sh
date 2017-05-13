#!/usr/bin/env bash

####################
# Upgrade & update #
####################

sudo apt-get upgrade && sudo apt-get update ;

#############################
# Install required packages #
#############################

sudo apt-get install -y gufw ubuntu-restricted-extras ffmpeg gxine libdvdread4 icedax tagtool libdvd-pkg easytag id3tool lame libxine2-ffmpeg ;

sudo apt-get install -y nautilus-script-audio-convert libmad0 mpg321 libavcodec-extra gstreamer1.0-libav p7zip-rar p7zip-full unace unrar zip unzip sharutils rar uudeview mpack arj cabextract file-roller ;

# git - vim - zsh - git-core
sudo apt-get install -y git vim zsh git-core ;

# indicator multiload
sudo apt-get install -y indicator-multiload ;

# bison - curl - mercurial - make - binutils - gcc - build-essential
sudo apt-get install -y bison curl mercurial make binutils gcc build-essential ;

# spotify
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886 ;
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list ;
sudo apt-get update ;
sudo apt-get install -y spotify-client ;

########################
# curl / wget installs #
########################

# node version manager
curl -o- https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash ;

# yarn pkg
curl -o- -L https://yarnpkg.com/install.sh | bash ;
