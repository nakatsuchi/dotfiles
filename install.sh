#!/bin/bash

dotfiles_dir=$HOME/dotfiles

cd $HOME

dotfiles=(\
  .bin \
  .bash_profile \
  .bashrc \
  .vimrc \
  .tmux.conf \
  .gitconfig \
)

for dotfile in "${dotfiles[@]}"; do
  ln -s $dotfiles_dir/$dotfile .
done

directories=(\
  bin \
  .vimbackup \
)

for dir in "${directories[@]}"; do
  mkdir $dir
done

