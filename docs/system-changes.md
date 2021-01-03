# System Changes

## System Preferences

#### Trackpad

* Turn on Tap to Click
```bash
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
```

#### Sharing

* Change Computer Name
```bash
sudo scutil --set ComputerName "Name"
```

#### Spotlight

* Change Keyboard Shortcut to Ctrl+Space. \(Spotlight will be replaced by Alfred in the latter part of the guide, still keeping it incase anyone doesn't need to use Alfred\)

#### Energy Saver

* Show battery percentage in menu bar
```bash
defaults write com.apple.menuextra.battery ShowPercent -string "YES"
killall SystemUIServer
```

#### Internet Accounts

* Add Google sync

## Finder

#### Preferences

* New Finder windows show: `fahim`

#### View

* Show Tab Bar
* Show Path Bar
* Show Status Bar

```bash
sudo defaults write NSGlobalDomain AppleShowAllExtensions -bool true
sudo defaults write com.apple.finder ShowStatusBar -bool true
sudo defaults write com.apple.finder ShowPathbar -bool true
sudo defaults write com.apple.finder ShowTabView -bool true


## Fix Screenshot Path

* Terminal: `defaults write com.apple.screencapture location`  and then drag drop Screenshots folder (in Pictures) into it.

Or

```bash
cd Pictures
mkdir Screenshots
defaults write com.apple.screencapture location /Users/fahim/Pictures/Screenshots
```


### Some more QOL Changes

```bash
# Most commands here will require sudo permission
# Keep folders on top when sorting by name
sudo defaults write com.apple.finder _FXSortFoldersFirst -bool true

# When performing a search, search the current folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Avoid creating .DS_Store files on network or USB volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

# Disable disk image verification
defaults write com.apple.frameworks.diskimages skip-verify -bool true
defaults write com.apple.frameworks.diskimages skip-verify-locked -bool true
defaults write com.apple.frameworks.diskimages skip-verify-remote -bool true

# Disable auto-correct
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# Always show scrollbar
defaults write NSGlobalDomain AppleShowScrollBars -string "Always"

# Show the ~/Library folder
chflags nohidden ~/Library && xattr -d com.apple.FinderInfo ~/Library

# Show the /Volumes folder
sudo chflags nohidden /Volumes
