#!/bin/bash

dotfiles_dir=$HOME/dotfiles

cd $HOME

dotfiles=(\
  .bashrc \
  .vimrc \
  .tmux.conf \
)

for dotfile in "${dotfiles[@]}"; do
  ln -s $dotfiles_dir/$dotfile .
done

directories=(\
  .vimbackup \
)

for dir in "${directories[@]}"; do
  mkdir $dir
done

