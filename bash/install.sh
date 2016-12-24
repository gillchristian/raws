#!/usr/bin/env bash

####################
# Upgrade & update #
####################

sudo ap-get upgrade && sudo apt-get update ;

#############################
# Install required packages #
#############################

sudo atp-get install -y gufw ubuntu-restricted-extras ffmpeg gxine libdvdread4 icedax tagtool libdvd-pkg easytag id3tool lame libxine2-ffmpeg ;

sudo atp-get install -y nautilus-script-audio-convert libmad0 mpg321 libavcodec-extra gstreamer1.0-libav p7zip-rar p7zip-full unace unrar zip unzip sharutils rar uudeview mpack arj cabextract file-roller ;

# git - vim - zsh - git-core
sudo atp-get install -y git vim zsh git-core ;

# indicator multiload
sudo atp-get install -y indicator-multiload ;

# bison - curl - mercurial - make - binutils - gcc - build-essential
sudo atp-get install -y bison curl mercurial make binutils gcc build-essential ;

# golang
sudo add-apt-repository ppa:ubuntu-lxc/lxd-stable ;
sudo apt-get update ;
sudo apt-get -y install golang ;

# spotify
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886 ;
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list ;
sudo apt-get update ;
sudo apt-get install -y spotify-client ;

########################
# curl / wget installs #
########################

# node version manager
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.1/install.sh | zsh ;

# golang version manager
zsh < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer) ;

# yarn pkg
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add - ;
echo "deb http://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list ;

sudo apt-get -y update && sudo apt-get install -y yarn ;

# oh-my-zsh
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh ;
chsh -s `which zsh`;
sudo shutdown -r 0 ;


###########################
# setup env - langs - etc #
###########################

# golang's $GOPATH

mkdir ~/dev ;
mkdir ~/dev/go ;
mkdir ~/dev/go/bin ~/dev/go/src ;

echo "# golang's $GOPATH"  >> ~/.zshrc ;
echo 'export GOPATH="$HOME/dev/go"' >> ~/.zshrc ;
echo 'export PATH="$PATH:$GOPATH/bin"' >> ~/.zshrc ;

# vimrc
curl https://raw.githubusercontent.com/gillchristian/raws/master/dotfiles/.vimrc > ~/.vimrc
