# System Changes

## System Preferences

#### Trackpad

* Turn on Tap to Click

#### Sharing

* Change Computer Name

#### Spotlight

* Change Keyboard Shortcut to Ctrl+Space. \(Spotlight will be replaced by Alfred in the latter part of the guide, still keeping it incase anyone doesn't need to use Alfred\)

#### Energy Saver

* Show battery percentage in menu bar

#### Internet Accounts

* Add Google sync



## Finder

#### Preferences

* New Finder windows show: `fahim`

#### View

* Show Tab Bar
* Show Path Bar
* Show Status Bar



## Fix Screenshot Path

* Terminal: `defaults write com.apple.screencapture location`  and then drag drop Screenshots folder \(in Pictures\) into it. 

Or

```text
cd Pictures
mkdir Screenshots
defaults write com.apple.screencapture location /Users/fahim/Pictures/Screenshots
```
