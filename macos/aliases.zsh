# Show and hide hidden files in Finder
alias show='defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder'
alias hide='defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder'

# Hide/show all desktop icons (useful when presenting)
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

# Clean up LaunchServices to remove duplicates in the "Open With" menu
alias lscleanup="/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user && killall Finder"

# PlistBuddy alias
alias plistbuddy="/usr/libexec/PlistBuddy"

# Defaults aliases
alias dw="defaults write"
alias dr="defaults read"
alias ddel="defaults delete"

# Empty the Trash on all mounted volumes and the main HDD.
# Also, clear Apple’s System Logs to improve shell startup speed.
# Finally, clear download history from quarantine. http://www.macgasm.net/2013/01/18/good-morning-your-mac-keeps-a-log-of-all-your-downloads/
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl; sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'delete from LSQuarantineEvent'"
