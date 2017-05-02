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

## Structure

### Special stuff in structure

* **bin.symlink/** — all scripts from this directory will be available in your `$PATH`
* **cheat.symlink/** - files here contain cheatsheets for particular commands and are available via [cheat](https://github.com/chrisallenlane/cheat) app
* **config/** - all directories here are linked to `~/.config/` directory. It's for applications that use `$XDG_CONFIG_HOME` for config path
* **private/** - directory for private things that won't be tracked in git
* **scripts/** - scripts to bootstrap (link dotfiles) and install all stuff
* **shared/** - helper scripts with functions which other scripts use
* **Brewfile** - list of applications to install via [Homebrew](https://brew.sh/)

All things ending with `.symlink` are linked automatically to `$HOME` directory with `.` at the beginning of the filename. It happens in `scripts/bootstrap.sh` phase.

Stuff ending with `.symlink_special` are linked to proper place also in `scripts/bootstrap.sh` phase.

`install.sh` file in each topical directory contains stuff to install for particular topic and this happens in `scripts/install` phase.

Files ending with `.zsh` is automatically loaded into the shell.

### Normal stuff in structure

All other directories such `zsh/`, `vim/` or `macOS/` contains topic related things (settings, aliases, environments variables and so on). 

## Acknowledgments

* [Zach Holman](https://zachholman.com) and his [dotfiles repository](https://github.com/holman/dotfiles) for topical structure approach and linking scripts
* [Mathias Bynens](https://mathiasbynens.be/) and his [dotfiles repository](https://github.com/mathiasbynens/dotfiles) for macOS defaults settings script