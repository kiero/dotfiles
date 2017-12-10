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
alias dots="cd ~/.dotfiles"

# Shortcuts
alias g="git"
alias h="history"
alias t="touch"
alias cpr="cp -R"
alias rmd="rm -rf"

# Repeat the last command with sudo
alias again="sudo !!"
# Display each part of $PATH in new line
alias path='echo -e ${PATH//:/\\n} | nl'

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ifconfig -a inet | awk '/inet/ {print $2}'"

alias isinternet="ping 8.8.8.8"

# Show current weather
alias weather="curl -H 'Accept-Language: pl' -A "curl" wttr.in/Wrocław"

# youtube-dl
alias yt="youtube-dl"
alias ytx="youtube-dl -x --audio-format mp3"

# jrnl aliases
alias jrnl=" jrnl"
alias jrnlshort=" jrnl --short"
alias jrnledit=" jrnl -1 --edit"

# Zsh and vim
alias vimrc="vim ~/.vimrc"
alias zshrc="vim ~/.zshrc"
alias reload!='source ~/.zshrc'
