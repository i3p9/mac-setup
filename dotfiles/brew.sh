#!/bin/sh

echo "Installing brew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew update

echo "Installing the core stuff..."
brew install coreutils
brew install wget
brew install youtube-dl
brew install aria2
brew install tree
brew install tvnamer
brew install mas
brew install pinentry-mac
brew install gnupg
brew install thefuck
brew install tldr
brew install switchaudio-osx

echo "Installing cask apps"
brew install adoptopenjdk
brew install alt-tab
brew install altserver
brew install appcleaner
brew install authy
brew install avibrazil-rdm
brew install cloudflare-warp
brew install coteditor
brew install cyberduck
brew install discord
brew install docker
brew install dozer
brew install google-chrome
brew install handbrake
brew install iina
brew install imageoptim
brew install iterm2
brew install jdownloader
brew install keka
brew install lulu
brew install lyricsx
brew install mac2imgur
brew install maccy
brew install monitorcontrol
brew install notion
brew install numi
brew install slack
brew install spotify
brew install transmission
brew install transmission-remote-gui
brew install typora
brew install unified-remote
brew install visual-studio-code
brew install xampp

echo "Installing fonts..."
brew tap homebrew/cask-fonts
brew cask install font-iosevka

echo "for the  dev tools, please refer to the dev tools section of my mac-setup guide"
