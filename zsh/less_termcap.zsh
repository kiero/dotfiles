# Blinking mode: red
export LESS_TERMCAP_mb=$(tput setaf 1) # enter blinking
# Double-bright mode: blue
export LESS_TERMCAP_md=$(tput setaf 4) # enter double-bright
# Leave all apperance modes: turn off all styles
export LESS_TERMCAP_me=$(tput sgr0)

# Standout mode: magenta
export LESS_TERMCAP_se=$(tput sgr0) # leave standout
export LESS_TERMCAP_so=$(tput setaf 5) # enter standout

# Underline mode: yellow and underline
export LESS_TERMCAP_ue=$(tput rmul; tput sgr0) # leave underline
export LESS_TERMCAP_us=$(tput smul; tput setaf 3) # enter underline
