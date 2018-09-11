#!/bin/bash

# Core dotfiles

DOTFILES=(gitconfig vimrc zshrc)

for file in ${DOTFILES[@]}
do
  if [ ! -e ~/.$file ]
  then
    ln -s ~/dotfiles/.$file ~/.$file
  fi
done

# filetype settings

if [ ! -e ~/.vim/ftplugin ]
then
  mkdir -p ~/.vim/ftplugin
fi

for file in `ls ~/dotfiles/ftplugin`
do
  if [ ! -e ~/.vim/ftplugin/$file ]
  then
    ln -s ~/dotfiles/ftplugin/$file ~/.vim/ftplugin/$file
  fi
done

# Install dein (Vim plugin package manager)

if [ ! -e ~/.cache/dein/repos/github.com/Shougo/dein.vim ]
then
  curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
  sh ./installer.sh ~/.cache/dein
fi

