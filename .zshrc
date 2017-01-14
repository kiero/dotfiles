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

# Turn on menu select
autoload compinit && compinit
zstyle ':completion:*' menu select

# Create PROMPT
. $DOTFILES/prompt.zsh
