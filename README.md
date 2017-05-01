# kiero's dotfiles

This is my toolbox of aliases, customizations and scripts that makes my work much more productive.

It also serves as a quick installation of applications and settings when setting up a new machine.

## Installation

To install dotfiles run this in your terminal:

```sh
git clone https://github.com/kiero/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
scripts/bootstrap.sh
scripts/install
```

It will clone the repo to `~/.dotfiles`. `scripts/bootstrap.sh` script will link all dotfiles from this folder to proper place. And finally `scripts/install` script will install all applications from Brewfile, set up macOS custom settings via defaults and install stuff from all `install.sh` scripts.

## Acknowledgments

* [Zach Holman](https://zachholman.com) and his [dotfiles repository](https://github.com/holman/dotfiles) for topical structure approach and linking scripts
* [Mathias Bynens](https://mathiasbynens.be/) and his [dotfiles repository](https://github.com/mathiasbynens/dotfiles) for macOS defaults settings script