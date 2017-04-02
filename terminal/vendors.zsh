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
