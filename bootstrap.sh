#!/usr/bin/env bash
# Installation script of kiero's dotfiles

cd "$(dirname "${BASH_SOURCE}")";
DOTFILES=$(pwd -P)

. $DOTFILES/helpers.sh

for source in .bin .config/youtube-dl .curlrc .gemrc .gitconfig .gitignore_global .hushlogin .vimrc .wgetrc .zshrc; do
  target=~/$source
  source=$DOTFILES/$source

  rm -rf $target
  ln -s $source $target
done

unset DOTFILES
