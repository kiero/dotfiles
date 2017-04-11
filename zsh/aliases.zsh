#!/usr/bin/env bash

# Easier navigation
alias ..="cd .."
alias 2..="cd ../.."
alias 3..="cd ../../.."
alias 4..="cd ../../../.."
alias -- -="cd -"

# Quick navigation
alias c='cd ~/code && ll'
alias p='cd ~/Projects && ll'
alias d='cd ~/Desktop'
alias dl="cd ~/Downloads"

# Shortcuts
alias g="git"
alias h="history"
alias t="touch"
alias cpr="cp -R"
alias rmd="rm -rf"

# Create a directory and enter it
function mkd { mkdir -p $1 && cd $_ }

# Quick open (if no argument passed then open current directory)
function o { open ${@:-'.'} }
# Quick open in Atom (if no argument passed then open current directory)
function a { atom ${@:-'.'} }

# Always enable colored `grep` output
# Note: `GREP_OPTIONS="--color=auto"` is deprecated, hence the alias usage.
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Repeat the last command with sudo
alias again="sudo !!"
# Display each part of $PATH in new line
alias path='echo -e ${PATH//:/\\n} | nl'

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ifconfig -a inet | awk '/inet/ {print $2}'"

# Show current weather
alias weather="curl -H 'Accept-Language: pl' -A "curl" wttr.in/Wrocław"

# youtube-dl
alias ydl="youtube-dl"
alias ydlx="youtube-dl -x"

# jrnl aliases
alias jrnl=" jrnl"
alias jrnlshort=" jrnl --short"
alias jrnledit=" jrnl -1 --edit"

# Zsh and vim
alias vimrc="vim ~/.vimrc"
alias zshrc="vim ~/.zshrc"
alias reload!='source ~/.zshrc'
