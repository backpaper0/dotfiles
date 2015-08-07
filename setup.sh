#!/bin/sh

DOTFILES=(gitconfig vimrc zshrc)

for file in $DOTFILES
do
  ln -s ~/dotfiles/.$file ~/.$file
done

if [ ! -e ~/.vim/bundle ]
then
  mkdir -p ~/.vim/bundle
fi

if [ ! -e ~/.vim/bundle/neobundle.vim ]
then
  git clone https://github.com/Shougo/neobundle.vim.git ~/.vim/bundle/neobundle.vim
fi

