#!/usr/bin/env bash
#
# This installs rubies via rbenv

set -e

install_rubies () {
  echo "Installing Ruby 1.9.3-p551"
  RUBY_CONFIGURE_OPTS=--with-readline-dir="$(brew --prefix readline)" rbenv install 1.9.3-p551
  echo "Installing Ruby 2.0.0-p648"
  RUBY_CONFIGURE_OPTS=--with-readline-dir="$(brew --prefix readline)" rbenv install 2.0.0-p648
  echo "Installing Ruby 2.2.6"
  RUBY_CONFIGURE_OPTS=--with-readline-dir="$(brew --prefix readline)" rbenv install 2.2.6
  echo "Installing Ruby 2.3.3"
  RUBY_CONFIGURE_OPTS=--with-readline-dir="$(brew --prefix readline)" rbenv install 2.3.3
  echo "Installing Ruby 2.4.1"
  RUBY_CONFIGURE_OPTS=--with-readline-dir="$(brew --prefix readline)" rbenv install 2.4.1
}

if (( $+commands[rbenv] ))
then
  install_rubies
fi
