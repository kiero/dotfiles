#!/usr/bin/env bash
#
# This installs rubies via rbenv

set -e

install_rubies () {
  echo "Installing Ruby 2.2.6"
  RUBY_CONFIGURE_OPTS=--with-readline-dir="$(brew --prefix readline)" rbenv install 2.2.6
  echo "Installing Ruby 2.3.3"
  RUBY_CONFIGURE_OPTS=--with-readline-dir="$(brew --prefix readline)" rbenv install 2.3.3
  echo "Installing Ruby 2.4.1"
  RUBY_CONFIGURE_OPTS=--with-readline-dir="$(brew --prefix readline)" rbenv install 2.4.1
}

if test $(which rbenv)
then
  install_rubies
fi

echo "Installing bundler..."
gem install bundler

echo "› bundle install"
bundle install
