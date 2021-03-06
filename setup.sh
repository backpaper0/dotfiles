#!/bin/bash

# Core dotfiles

DOTFILES=(gitconfig gitignore_global zshrc tmux.conf)

for file in ${DOTFILES[@]}
do
  if [ ! -e ~/.$file ]
  then
    ln -s ~/dotfiles/$file ~/.$file
  fi
done

