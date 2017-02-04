# Set locale variables to prevent possible encoding issues
export LANG='en_US'
export LC_ALL='en_US.UTF-8'
export LC_TIME="en_GB.UTF-8"

# Set the default editor
export EDITOR='vim -c startinsert'

# Don’t clear the screen after quitting a manual page
export MANPAGER='less -X'

# Path to my dotfiles location
DOTFILES=$HOME/.dotfiles

. $DOTFILES/helpers.sh
. $DOTFILES/aliases.zsh
. $DOTFILES/extra
. $DOTFILES/less_termcap.zsh

bindkey -v
bindkey "^R" history-incremental-pattern-search-backward

# Set $PATH variable
PATH=$HOME/.bin
PATH=$PATH:/usr/local/bin
PATH=$PATH:/usr/bin
PATH=$PATH:/bin
PATH=$PATH:/usr/local/sbin
PATH=$PATH:/usr/sbin
PATH=$PATH:/sbin
export PATH

eval "$(rbenv init -)"
eval $(thefuck --alias f)

# LS colors, made with https://geoff.greer.fm/lscolors/
export LSCOLORS="eafxcxdxbxegedabagacad"
export LS_COLORS="di=34;40:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43"
export CLICOLOR=1

# Create PROMPT
. $DOTFILES/prompt.zsh

# Turn on menu select
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
# Use $LS_COLORS for tab completion
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
autoload -Uz compinit && compinit

