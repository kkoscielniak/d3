#!/bin/zsh 

# Speed up Mission Control
defaults write com.apple.dock expose-animation-duration -float 0.1
echo "Mission Control speed increased"

# Disable the “Are you sure you want to open this application?” dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false
echo "Confirmation dialog for running non-checked apps disabled"

# Require password immediately after sleep or screen saver.
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0
echo "Password immediately after sleep or screen saver will be required"

# Enable Dock autohide and shorten the delay
defaults write com.apple.Dock autohide -bool TRUE
defaults write com.apple.Dock autohide-delay -float 0.0001
echo "Dock showing delay disabled"

# Hide Desktop icons
defaults write com.apple.finder CreateDesktop FALSE

killall Dock
killall Finder