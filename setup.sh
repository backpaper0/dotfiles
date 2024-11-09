#!/bin/bash

# Core dotfiles

DOTFILES=(gitconfig gitignore_global zshrc)

for file in $(ls files)
do
  if [ ! -e $HOME/.$file ]
  then
    ln -s $HOME/dotfiles/files/$file ~/.$file
  fi
done

