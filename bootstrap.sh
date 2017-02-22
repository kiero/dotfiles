#!/usr/bin/env bash
# Installation script of kiero's dotfiles

cd "$(dirname "${BASH_SOURCE}")";
DOTFILES=$(pwd -P)

. $DOTFILES/helpers.sh

FILES=(
.bin
.config/youtube-dl
.curlrc
.gemrc
.gitconfig
.gitconfig_private
.gitignore_global
.hushlogin
.irbrc
.vimrc
.wgetrc
.zshrc
)

for source in ${FILES[@]}; do
  target=~/$source
  source=$DOTFILES/$source

  rm -rf $target
  ln -s $source $target
done

unset DOTFILES
unset FILES
