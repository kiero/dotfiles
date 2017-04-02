#!/usr/bin/env bash

# Easier navigation: .., ..., ...., ....., ~ and -
alias ..="cd .."
alias 2..="cd ../.."
alias 3..="cd ../../.."
alias 4..="cd ../../../.."
alias -- -="cd -"

# Quick navigation
alias p='cd ~/Projects && ll'
alias d='cd ~/Desktop'

# Shortcuts
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias p='cd ~/Projects && ll'
alias g="git"
alias h="history"
alias cpr="cp -R"

# Repeat the last command with sudo
alias again="sudo !!"

# Often use commands
alias v=$EDITOR
alias g=git

function o { open ${@:-'.'} }
function a { atom ${@:-'.'} }


# Listing files
alias ls='ls -FG' # List with slashes (for directories) and colors
alias l='ls'
alias lsa='ls -A' # List also hidden files except . and ..
alias la='lsa'
alias ll='ls -lh' # List with human readable form
alias lla='ll -A' # List also hidden files except . and .. with human readable form

# Create a directory and enter it
function mkd { mkdir -p $1 && cd $_ }

# Bundler aliases
alias be='bundle exec'
alias bi='bundle install'
alias bo='bundle outdated'
alias bu='bundle update'

# Middleman-related aliases
alias mb='bundle exec middleman build'
alias mid='bundle exec middleman deploy'
alias ms='bundle exec middleman server'

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ifconfig -a inet | awk '/inet/ {print $2}'"

alias reload!='source ~/.zshrc'

alias path='echo -e ${PATH//:/\\n} | nl'

# jrnl aliases
alias jrnl=" jrnl"
alias jrnlshort=" jrnl --short"
alias jrnledit=" jrnl -1 --edit"

alias weather="curl -H 'Accept-Language: pl' -A "curl" wttr.in/Wrocław"

alias vimrc="vim ~/.vimrc"
alias zshrc="vim ~/.zshrc"
