#!/bin/bash

ERR=0
HERE=`pwd`
echo "$HERE"

if [ -e ~/.vim ]; then
	echo '~/.vim is exist'
else
	`ln -s $HERE/.vim ~/.vim`
	if [ 0 -ne $? ]; then
		ERR=1
	fi
fi

if [ -e ~/.vimrc ]; then
	echo '~/.vimrc is exist'
else
	`ln -s $HERE/.vimrc ~/.vimrc`
	if [ 0 -ne $? ]; then
		ERR=1
	fi
fi

if [ -e ~/.config/fish ]; then
	echo '~/.config/fish is exist'
else
	`mkdir -p ~/.config/fish`
	if [ 0 -ne $? ]; then
		ERR=1
	fi
fi

if [ -f ~/.config/fish/config.fish ]; then
	echo '~/.config/fish/config.fish is exist'
else
	`ln -s $HERE/.config/fish/config.fish ~/.config/fish/config.fish`
	if [ 0 -ne $? ]; then
		ERR=1
	fi
fi

if [ -d $HERE/.vim/bundle ]; then
	echo '~/.vim/bundle is exist'
else
	`mkdir $HERE/.vim/bundle`
	if [ 0 -ne $? ]; then
		ERR=1
	fi
fi

if [ $ERR -eq 0 ]; then
	echo "You should download dein in $HERE/.vim/bundle"
	echo "	$ git clone https://github.com/Shougo/dein.vim.git"
	echo 'done.'
fi
