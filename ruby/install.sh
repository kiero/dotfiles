#!/usr/bin/env bash
#
# This installs rbenv and rubies

set -e

# Install rbenv if not present
if ! command -v rbenv &>/dev/null; then
  echo "Installing rbenv..."
  if [[ "$(uname)" == "Darwin" ]]; then
    brew install rbenv ruby-build
  else
    curl -fsSL https://github.com/rbenv/rbenv-installer/raw/HEAD/bin/rbenv-installer | bash
    export PATH="$HOME/.rbenv/bin:$PATH"
  fi
fi

eval "$(rbenv init -)"

RUBIES=(
  "3.2.2"
  "3.3.7"
  "3.4.2"
)

install_rubies () {
  local readline_opt=""
  if [[ "$(uname)" == "Darwin" ]]; then
    readline_opt="--with-readline-dir=$(brew --prefix readline)"
  fi

  for version in "${RUBIES[@]}"; do
    echo "Installing Ruby $version"
    RUBY_CONFIGURE_OPTS=$readline_opt rbenv install -s "$version" || {
      echo "=== Build failed for Ruby $version ==="
      cat /tmp/ruby-build.*.log 2>/dev/null | tail -30 || true
      exit 1
    }
  done

  rbenv global "${RUBIES[-1]}"
}

install_rubies

echo "Installing bundler..."
gem install bundler

if [ -z "$CI" ]; then
  echo "› bundle install"
  bundle install
fi
