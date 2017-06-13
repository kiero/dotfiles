# iTerm: repo name or dir name in tab's title
# (from: https://github.com/narfdotpl/dotfiles)
precmd() {
  local _path=$(git rev-parse --show-toplevel 2> /dev/null || dirs)
  local title=$(basename $_path)
  echo -ne "\033]0;"$title"\007"
}
