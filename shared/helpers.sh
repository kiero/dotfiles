#!/usr/bin/env bash
# Helper functions

ask_user_default_yes() {
  local request=$1
  local result=
  read -r -n 1 -p "$request [n/Y] " response
  # empty echo in order to display new message in a new line
  # after reading from user input
  echo
  case $response in
    [yY][eE][sS]|[yY]|"")
        return 0;
        ;;
    [nN][oO]|[nN])
        return 1;
        ;;
    *)
        ask_user_default_yes "$request";
        ;;
  esac
}

info() {
  local message=$1
  printf "\033[0;34m========> INFO:\033[0;37m $message \033[0m\n"
}

success() {
  local message=$1
  printf "\033[0;32m========> OK:\033[0;37m $message \033[0m\n"
}

fail() {
  local message=$1
  printf "\033[0;31m========> FAIL:\033[0;37m $message \033[0m\n"
}
