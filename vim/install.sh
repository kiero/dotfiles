#!/usr/bin/env bash
#
# This installs Vim stuff

# Install Vundle (vim plugin manager)

echo "Installing Vim dependencies."

VUNDLE_DIRECTORY="$HOME/.vim/bundle/Vundle.vim"
if [ ! -d "$VUNDLE_DIRECTORY" ]; then
  echo "Installing Vundle."
  git clone https://github.com/VundleVim/Vundle.vim.git $VUNDLE_DIRECTORY
fi
vim +PluginInstall +qall
echo "Vim dependencies have been successfully installed."
