#!/usr/bin/env bash

#Housekeeping
RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
YELLOW=$(tput setaf 3)
NORMAL=$(tput sgr0)


cat << "EEF"
                                         __
   ____ ___  ____ ______      ________  / /___  ______
  / __ `__ \/ __ `/ _________/ ___/ _ \/ __/ / / / __ \
 / / / / / / /_/ / /__/_____(__  /  __/ /_/ /_/ / /_/ /
/_/ /_/ /_/\__,_/\___/     /____/\___/\__/\__,_/ .___/
                                              /_/
------------------------------------------------------
EEF

echo "...System Changes..."
# echo "Setting up computer name..."

# echo "Type Computer Name, leave field empty for default name"

printf "${NORMAL}Showing battery percentage next to icon in Menu Bar..."

defaults write com.apple.menuextra.battery "ShowPercent" -string "YES"
killall SystemUIServer

printf "${GREEN}Done\n"

printf "Setting up Dock\n"
printf "${NORMAL}Disabling Show Recents..."
defaults write com.apple.dock "show-recents" -bool "false" && killall Dock
# echo "Setting up dock position...Type either left or right to change, leave empty for bottom"
printf "${GREEN}Done\n"

printf "${NORMAL}Setting up Finder..."
defaults write com.apple.finder "NewWindowTarget" -string "PfHm"
defaults write com.apple.finder "ShowStatusBar" -bool "true"
defaults write com.apple.finder "ShowPathbar" -bool "true"
defaults write com.apple.finder "ShowTabView" -bool "true"
# Keep folders on top when sorting by name
defaults write com.apple.finder "_FXSortFoldersFirst" -bool "true"

# When performing a search, search the current folder by default
defaults write com.apple.finder "FXDefaultSearchScope" -string "SCcf"

printf "${GREEN}Done\n"

# Avoid creating .DS_Store files on network or USB volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool "true"
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool "true"

echo "Done... Restarting Finder for the changes to take effect"
killall Finder

echo "Setting up default Screenshot path to Pictures/Screenshots"
mkdir $USER/Pictures/Screenshots
defaults write com.apple.screencapture location /Users/$USER/Pictures/Screenshots

echo "Done..."

echo "Adding some QOL Changes..."
echo "Disabling auto-correct..."
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

echo "Done..."
