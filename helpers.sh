#!/usr/bin/env bash
# Helper functions

ask_user_default_yes() {
  local request=$1
  local result=
  read -r -p "$request [n/Y] " response
  case $response in
    [yY][eE][sS]|[yY]|"")
        return 0;
        ;;
    *)
        return 1;
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
