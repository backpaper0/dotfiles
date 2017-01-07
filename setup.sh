#!/bin/bash

DOTFILES=(gitconfig vimrc zshrc)

for file in ${DOTFILES[@]}
do
  ln -s ~/dotfiles/.$file ~/.$file
done

if [ ! -e ~/.vim/dein ]
then
  mkdir -p ~/.vim/dein
fi

if [ ! -e ~/.vim/dein/repos/github.com/Shougo/dein.vim ]
then
  curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
  sh ./installer.sh ~/.vim/dein
fi

