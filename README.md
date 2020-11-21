# MacOS Setup Guide (Totally personal, still being worked on)

# System Preferences

### Trackpad

- Turn on Tap to Click

### Sharing

- Change Computer Name

### Spotlight

- Change Keyboard Shortcut to Ctrl+Space

### Energy Saver

- Show battery percentage in menu bar

# Finder

### General

- New Finder windows show: `fahim`

### View

- Show Tab Bar
- Show Path Bar
- Show Status Bar

# Screenshot Paths

- Terminal: `defaults write com.apple.screencapture location` and then drag drop Screenshots folder (in Pictures) into it

# Setting up Apps/ dev environment

- Install homebrew from [brew.sh](http://brew.sh) or `/bin/bash -c "$(curl -fsSL [https://raw.githubusercontent.com/Homebrew/install/master/install.sh](https://raw.githubusercontent.com/Homebrew/install/master/install.sh))"`
- Install python3 from `brew install python3` and change alias for python and pip
- `echo "alias python=/usr/local/bin/python3" >> ~/.zshrc`
- `echo "alias pip=/usr/local/bin/pip3" >> ~/.zshrc`

# Brew Apps

- Basics: `brew install wget youtube-dl aria2 tree`

# Brew Cask Apps

- `brew cask install adoptopenjdk14 imageoptim maccy adoptopenjdk8 iterm2 notion appcleaner jdownloader slack discord kap transmission eclipse-java keka transmission-remote-gui handbrake lyricsx visual-studio-code iina mac2imgur xampp`

# Outside brew Apps

- Messenger
- Magnet
- PhotoScape X
- Final Cut Pro
- NordVPN
- WPS Office

# iTerm Setup

- Install `brew install zsh zsh-completions` for latest zsh
- Install oh-my-zsh `sh -c "$(curl -fsSL [https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh](https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh))"`
- Download theme `wget [https://raw.githubusercontent.com/i3p9/mac-setup/main/iterm2/Clovis-iTerm2-Color-Scheme.itermcolors](https://raw.githubusercontent.com/i3p9/mac-setup/main/iterm2/Clovis-iTerm2-Color-Scheme.itermcolors)` and set it as default
- Use font Menlo, size 15 (for now)
- Prefs: Appearance>Tab>Select *Always show tab bar*
- Download and configure powerlevel10k `git clone --depth=1 [https://github.com/romkatv/powerlevel10k.git](https://github.com/romkatv/powerlevel10k.git) ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k`
- If the command doesn't work get it from [p10k](https://github.com/romkatv/powerlevel10k), then run `p10k configure` to config
- Open `.zshrc` by `nano ~/.zshrc` and add the line below to the file and save:
- `plugins=(git colored-man-pages colorize pip python brew osx zsh-syntax-highlighting zsh-autosuggestions)`
- Note: zsh-syntax-highlighting and zsh-autosuggestions would have been already installed but not seen by oh-my-zsh so it will throw erros, to fix the erros, do following:
- `git clone [https://github.com/zsh-users/zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions`
- `git clone [https://github.com/zsh-users/zsh-syntax-highlighting.git](https://github.com/zsh-users/zsh-syntax-highlighting.git) ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting`

# Git Specific Stuff

- `curl [https://raw.githubusercontent.com/github/gitignore/master/Global/macOS.gitignore](https://raw.githubusercontent.com/github/gitignore/master/Global/macOS.gitignore) -o ~/.gitignore`
- `git config --global core.excludesfile ~/.gitignore` to add macOS specific gitignore globally

# Anaconda Setup for Machine learning

- `brew cask install anaconda`
- Make a new folder in project called `ml` and cd into it
- get the requirements from `wget[https://raw.githubusercontent.com/i3p9/mac-setup/main/conda/requirements.yml](https://raw.githubusercontent.com/i3p9/mac-setup/main/conda/requirements.yml)`
- Then create the environment `conda env create -f requirements.yml`
- Make sure it's installed by `conda env list`
- Activate it by `conda activate ml`