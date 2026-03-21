# iOS and macOS development aliases

# Set simulator status bar to screenshot-ready state (9:41, full bars)
alias simstatusbar="xcrun simctl status_bar booted override --time 9:41 --cellularBars 4 --cellularMode active --wifiBars 3"
# Reset simulator status bar to default state
alias simstatusbarreset="xcrun simctl status_bar booted clear"
alias pi="bundle exec pod install"
alias pu="bundle exec pod update"
alias pru="bundle exec pod repo update"
alias pout="bundle exec pod outdated"
