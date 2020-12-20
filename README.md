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

# Git GPG Setup

- Install gnupg via `brew install gnupg`
- Check for existing keys `gpg --list-secret-keys --keyid-format LONG`
- Follow [this](https://docs.github.com/en/free-pro-team@latest/github/authenticating-to-github/generating-a-new-gpg-key) to generate a key and then import it to Git
- After that, tell git to use the keyid by `git config --global user.signingkey KEYIDHERE`
- Then tell git to always commit signed `git config --global commit.gpgsign true`
- If don't want to global sign commit, just use `-S` when commiting to sign individual commit.

Troubleshooting: If  `git commit -S -m` is thorwing error, do this: 
- `echo "test" | gpg --clearsign`
If the error is 
```
-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

test
gpg: signing failed: Inappropriate ioctl for device
gpg: [stdin]: clear-sign failed: Inappropriate ioctl for device
```
- Then run `echo 'export GPG_TTY=$(tty)' >> ~/.zshrc` and try again!

# Brew Apps

- Basics: `brew install wget youtube-dl aria2 tree tvnamer mas gnupg`

# Brew Cask Apps

- `brew cask install adoptopenjdk handbrake monitorcontrol altserver iina notion appcleaner imageoptim slack authy iterm2 spotify avibrazil-rdm jdownloader transmission cloudflare-warp keka transmission-remote-gui discord lyricsx typora docker mac2imgur visual-studio-code google-chrome maccy xampp`

# mas-cli Apps
mas-cli is a command line interface for the App Store. Downloads using app id.
- `mas install 497799835 1480068668 441258766 1116599239 1468073139 1107421413 1518425043 1107421413`


# Outside brew Apps

- Xcode (497799835)
- Messenger (1480068668)
- Magnet (441258766)
- PhotoScape X (929507092) [not in command]
- Final Cut Pro (424389933) [not in command]
- NordVPN (1116599239)
- WPS Office(1468073139)
- 1Blocker (1107421413)
- Limechat (414030210)
- Boop (1518425043)

# Fonts
Tap into cask-fonts in brew and install these fonts. More to add later. 
```
brew tap homebrew/cask-fonts
brew cask install font-iosevka
```

# iTerm Setup

- Install `brew install zsh zsh-completions` for latest zsh
- Install oh-my-zsh `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
- Download theme `wget https://raw.githubusercontent.com/i3p9/mac-setup/main/iterm2/vscode.itermcolors` (set as default) (More themes are available in the iterm folder)
- Use font Iosevka Term, size 16 (for now)
- Prefs: Appearance>Tab>Select *Always show tab bar*
- Download and configure powerlevel10k `git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k`
- Open `.zshrc` by `nano ~/.zshrc` and edit the theme line to `ZSH_THEME="powerlevel10k/powerlevel10k"` then run `p10k configure` to config
- If the command doesn't work get it from [p10k](https://github.com/romkatv/powerlevel10k), then run `p10k configure` to config
- Open `.zshrc` by `nano ~/.zshrc` and add the line below to the file and save:
- `plugins=(git colored-man-pages colorize pip python brew osx zsh-syntax-highlighting zsh-autosuggestions)`
- Note: zsh-syntax-highlighting and zsh-autosuggestions would have been already installed but not seen by oh-my-zsh so it will throw erros, to fix the erros, do following:
- `git clone https://github.com/zsh-users/zsh-autosuggestions
- `git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting`

# Git Specific Stuff

- `curl https://raw.githubusercontent.com/github/gitignore/master/Global/macOS.gitignore -o ~/.gitignore`
- `git config --global core.excludesfile ~/.gitignore` to add macOS specific gitignore globally

# Anaconda Setup for Machine learning

- `brew cask install anaconda`
- Make a new folder in project called `ml` and cd into it
- get the requirements from `wget https://raw.githubusercontent.com/i3p9/mac-setup/main/files/conda/requirements.yml`
- Then create the environment `conda env create -f requirements.yml`
- Make sure it's installed by `conda env list`
- Activate it by `conda activate ml`

# RDM Res

- For 3840x2160: `1920x1080`
- For 1920x1080: `1536x864 1440x810 1408x792 1366x768 1280x720`
- For 1600x900: `1408x792 1360x765 1280x720` 

# Finder Services

Service: Upload to Imgur
- Grab Imgur.sh from https://github.com/tremby/imgur.sh or use the command below
- `wget https://raw.githubusercontent.com/tremby/imgur.sh/main/imgur.sh`
- Change the API Key if necessary
- Copy and rename `imgur.sh` to bin folder. `cp imgur.sh /usr/local/bin/imgur`
- Make it executable. `chmod +x /usr/local/bin/imgur`
- Grab the `Imgur Uploader.workflow` file from Services folder and install it

# tvnamer setup
- tvnamer should already be downloaded via brew
- `cd ~/.config/`, then `mkdir tvrenamer`, `cd tvrenamer` and then `wget https://github.com/i3p9/mac-setup/raw/main/tvnamer.json`
- cool beans
