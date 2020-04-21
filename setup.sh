#!/bin/bash

# Core dotfiles

DOTFILES=(gitconfig gitignore_global vimrc zshrc)

for file in ${DOTFILES[@]}
do
  if [ ! -e ~/.$file ]
  then
    ln -s ~/dotfiles/$file ~/.$file
  fi
done

# filetype settings

if [ ! -e ~/.vim ]
then
  mkdir -p ~/.vim
fi

if [ ! -e ~/.vim/ftplugin ]
then
  ln -s ~/dotfiles/ftplugin ~/.vim/ftplugin
fi

# Install dein (Vim plugin package manager)

if [ ! -e ~/.cache/dein/repos/github.com/Shougo/dein.vim ]
then
  curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
  sh ./installer.sh ~/.cache/dein
fi

