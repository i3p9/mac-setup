# System Changes

```
Automation!
Do everything I have noted below in one command. Run This:
scriptlinkhere
```

## System Preferences

#### Trackpad

* Turn on Tap to Click

```bash
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad "Clicking" -bool "true"
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
```

#### Sharing

* Change Computer Name

```bash
sudo scutil --set ComputerName "Name"
```

#### Spotlight

* Change Keyboard Shortcut to Ctrl+Space. \(Spotlight will be replaced by Raycast in the latter part of the guide, still keeping it incase anyone doesn't use Raycast\)

#### Energy Saver

* Show battery percentage in menu bar

```bash
defaults write com.apple.menuextra.battery ShowPercent -string "YES" && killall SystemUIServer
```

## Dock

* Hide Recents app section on Dock

```bash
defaults write com.apple.dock "show-recents" -bool "false" && killall Dock
```

* Position of the dock. You can change it to either `left`, `right` or `bottom`. Ideally you would run one of the command from below. No need to run anything if you prefer your dock in the bottom.

```bash
# Put dock in the left of the screen
defaults write com.apple.dock "orientation" -string "left" && killall Dock
# Right of the screen
defaults write com.apple.dock "orientation" -string "right" && killall Dock
#Bottom of the screen
defaults write com.apple.dock "orientation" -string "bottom" && killall Dock
```

## Finder

#### Preferences

* New Finder windows opens your home folder, aka `your_username`

```bash
defaults write com.apple.finder "NewWindowTarget" -string "PfHm" && killall Finder
```

#### View

* Show Tab Bar
* Show Path Bar
* Show Status Bar

```bash
#sudo defaults write NSGlobalDomain "AppleShowAllExtensions" -bool "true"
defaults write com.apple.finder "ShowStatusBar" -bool "true" & killall Finder
defaults write com.apple.finder "ShowPathbar" -bool "true" & killall Finder
defaults write com.apple.finder "ShowTabView" -bool "true" & killall Finder
```

#### Advanced

* Keep folders on top when sorting by name
* When performing a search, search the current folder by default
* Avoid creating .DS_Store files on network or USB volumes

```bash
# Keep folders on top when sorting by name
defaults write com.apple.finder "_FXSortFoldersFirst" -bool "true" & killall Finder

# When performing a search, search the current folder by default
defaults write com.apple.finder "FXDefaultSearchScope" -string "SCcf" & killall Finder

# Avoid creating .DS_Store files on network or USB volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool "true"
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool "true"
```

## Screenshot Path

* Terminal: `defaults write com.apple.screencapture location`  and then drag drop Screenshots folder (in Pictures) into it.

Or

```bash
mkdir Pictures/Screenshots
defaults write com.apple.screencapture location /Users/$USER/Pictures/Screenshots
```


### Some more QOL Changes

```bash
# Disable auto-correct
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# Always show scrollbar
defaults write NSGlobalDomain "AppleShowScrollBars" -string "Always"
