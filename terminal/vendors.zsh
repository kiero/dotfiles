# Magnificent app which corrects your previous console command.
if (( $+commands[thefuck] ))
then
  eval $(thefuck --alias f)
fi

# Source z (tracks most-used directories to make cd smarter)
if [ -f /usr/local/etc/profile.d/z.sh ]
then
  source /usr/local/etc/profile.d/z.sh
fi

# Source zsh-syntax-highlighting
if [ -f /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]
then
  source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi
