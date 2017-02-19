autoload -U colors && colors
setopt prompt_subst

function parse_git_dirty {
  if [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit, working tree clean" ]]; then
    echo "%{$fg[red]%}✖︎%{$reset_color%}"
  else
    echo "%{$fg[green]%}✔%{$reset_color%}"
  fi
}

function git_prompt_info {
  local ref
  ref=$(command git symbolic-ref HEAD 2> /dev/null) || \
  ref=$(command git rev-parse --short HEAD 2> /dev/null) || return 0

  ref="%{$fg[blue]%}${ref#refs/heads/}%{$reset_color%}"

  echo "on ${ref} $(parse_git_dirty)"
}

# Left prompt
# E.g. # kiero at tesla in ~/.dotfiles on master ✔
PROMPT_BEGINNING="%{$fg[blue]%}#%{$reset_color%}"
PROMPT_USER="%{$fg[cyan]%}%n"
PROMPT_HOST_SEPARATOR="%{$reset_color%}at"
PROMPT_HOST="%{$fg[green]%}%m"
PROMPT_DIR_SEPARATOR="%{$reset_color%}in"
PROMPT_DIR="%{$fg[yellow]%}%~"
PROMPT_COLOR_RESET="%{$reset_color%}"
PROMPT_GIT_INFO='$(git_prompt_info)'
PROMPT_SIGN="%{$fg[white]%}→%{$reset_color%}"

PROMPT="
${PROMPT_BEGINNING} \
${PROMPT_USER} \
${PROMPT_HOST_SEPARATOR} \
${PROMPT_HOST} \
${PROMPT_DIR_SEPARATOR} \
${PROMPT_DIR} \
${PROMPT_COLOR_RESET}\
${PROMPT_GIT_INFO}
${PROMPT_SIGN} "

# Right prompt, e.g. ruby-2.3.0p0
PROMPT_RUBY_VERSION="%{$fg[magenta]%}ruby-$(ruby --version | cut -f2 -d ' ')%{$reset_color%}"

RPROMPT="${PROMPT_RUBY_VERSION}"
