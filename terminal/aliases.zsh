# Listing files
# Check if gls from homebrew coreutils exists
if $(gls &>/dev/null)
then
  alias ls="gls -F --color --time-style=\"+%Y-%m-%d %H:%M:%S\" --group-directories-first"
else
  alias ls='ls -FG'
fi

alias l='ls'
alias la='ls -A' # List also hidden files except . and ..
alias lsa='la'
alias ll='ls -lh' # List with human readable form
alias lla='ll -A' # List also hidden files except . and .. with human readable form

# Always enable colored `grep` output
# Note: `GREP_OPTIONS="--color=auto"` is deprecated, hence the alias usage.
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
