# Set locale variables to prevent possible encoding issues
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

# Set the default editor
export EDITOR='vim -c startinsert'

# Don’t clear the screen after quitting a manual page
export MANPAGER='less -X'

# LS colors, made with https://geoff.greer.fm/lscolors/
# Difference explained here: https://geoff.greer.fm/2008/06/27/lscolorsls_colors-now-with-linux-support/
# For BSD/macOS
export LSCOLORS="eafxcxdxbxegedabagacad"
# For Linux
export LS_COLORS="di=34;40:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43"
export CLICOLOR=1

# Turn on cheat colors
export CHEATCOLORS=true

# Disable cocoapods stats
export COCOAPODS_DISABLE_STATS=true

bindkey -v
bindkey "^R" history-incremental-pattern-search-backward
bindkey '^h' backward-delete-char
bindkey '^?' backward-delete-char
bindkey -s '\es' 'git status -s\n'
bindkey -s '\ez' 'cd -\n'

# Search history of commands by arrow up/down
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey '^[[A' up-line-or-beginning-search
bindkey '^[[B' down-line-or-beginning-search

# quote pasted URLs
# Fix from: https://github.com/sorin-ionescu/prezto/issues/978
autoload -Uz url-quote-magic bracketed-paste-magic
zle -N self-insert url-quote-magic
zle -N bracketed-paste bracketed-paste-magic
