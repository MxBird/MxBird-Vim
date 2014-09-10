#!/bin/bash

if [ -L $0 ] ; then
	FILE=`readlink $0`
	DIR=`dirname $FILE`
elif [ -f $0 ] ; then
	cd `dirname $0`
	DIR=$PWD
else
	echo "[ERR] Unknown file type: $0"
	exit 1
fi

path=$DIR
vundleDir=$path/vim/bundle/vundle

if ! [ -d $vundleDir/.git ]; then
	if [ -d $vundleDir ]; then
		rm -rf $vundleDir
	fi
	echo ">> Start install vundle..."
	git clone https://github.com/gmarik/vundle.git $vundleDir
	echo ">> Completed!"
fi

echo ">> install need pulgin"
brew install reattach-to-user-namespace
echo "........"

echo ">> To use this configure, need next steps:"
echo "1. Make some links"
echo "    ln -s $path/vim ~/.vim"
echo "    ln -s $path/vimrc ~/.vimrc"
echo "    ln -s $path/gvimrc ~/.gvimrc"
echo "    ln -s $path/editorconfig ~/.editorconfig"
echo "    ln -s $path/other_config/tmux.conf ~/.tmux.conf"
echo "    ln -s $path/other_config/gitconfig ~/.gitconfig"

echo "2. Run the command to bundle install all the plugins:"
echo "    vim +BundleInstall +qall"
echo "3. Run the following shell to install YCM for YouCompleteMe"
echo "    cd $path/vim/bundle/YouCompleteMe && ./install.sh"
