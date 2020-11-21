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


# Git Setup

- Generate ssh-key if on a new install `ssh-keygen -t ed25519 -C "your_email@example.com"` (Save in the default location specified)
- Start ssh-agent `eval "$(ssh-agent -s)"`
- Open the ssh config `open ~/.ssh/config`, if it doesn't exist, create one by `touch ~/.ssh/config` and then open `nano ~/.ssh/config` to edit
- Add the following lines and then save ([link](https://docs.github.com/en/free-pro-team@latest/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent) incase there's formatting error):
```
Host *
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ~/.ssh/id_ed25519
```
- Then add the ssh-key to the agent `ssh-add -K ~/.ssh/id_ed25519`
- Copy the pub file to clipboard using `pbcopy < ~/.ssh/id_ed25519.pub` and then paste it in Github Settings -> [SSH/GPG Keys](https://github.com/settings/keys)
- Test SSH connection `ssh -T git@github.com`
- If okay, then add username and email globally by using: 
- `git config --global user.name "i3p9"`
- `git config --global user.email your_email@example.com`
- Done!

# Brew Apps

- Basics: `brew install wget youtube-dl aria2 tree`

# Brew Cask Apps

- `brew cask install adoptopenjdk14 imageoptim maccy adoptopenjdk8 iterm2 notion appcleaner jdownloader slack discord kap transmission eclipse-java keka transmission-remote-gui handbrake lyricsx visual-studio-code iina mac2imgur xampp avibrazil-rdm authy`

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

# RDM Res

- For 3840x2160: `1920x1080`
- For 1920x1080: `1536x864 1440x810 1408x792 1366x768 1280x720`
- For 1600x900: `1408x792 1360x765 1280x720` 
