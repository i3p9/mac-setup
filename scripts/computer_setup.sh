#!/usr/bin/env bash

RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
YELLOW=$(tput setaf 3)
NORMAL=$(tput sgr0)
CYAN=$(tput setaf 6)

cat << "EEF"
                                         __
   ____ ___  ____ ______      ________  / /___  ______
  / __ `__ \/ __ `/ _________/ ___/ _ \/ __/ / / / __ \
 / / / / / / /_/ / /__/_____(__  /  __/ /_/ /_/ / /_/ /
/_/ /_/ /_/\__,_/\___/     /____/\___/\__/\__,_/ .___/
                                              /_/
------------------------------------------------------
EEF

printf "${CYAN}Starting up macOS Setup...\n"

printf "Creating SSH keys..."
if [ -d "$HOME/.ssh" ]; then
    echo "The .ssh directory in your home folder already exists. Skipping this step..."
else
    read -p "Please provide your e-mail address as a label: " USER_EMAIL
    if [[ -z "$USER_EMAIL" ]]; then
        echo "No input provided. Exiting..."
        exit 1
    else
        ssh-keygen -t rsa -b 4096 -C "$USER_EMAIL"
        echo -e "Host * \n  AddKeysToAgent yes\n  UseKeychain yes\n  IdentityFile ~/.ssh/id_ed25519" >> ~/.ssh/config
        ssh-add -K ~/.ssh/id_ed25519
        pbcopy < $HOME/.ssh/id_rsa.pub
        echo "The content of the id_rsa.pub file has been copied to your clipboard."
        echo "Add it to your GitHub account."
    fi
fi

printf "Creating SSH keys...${GREEN}Done\n"

echo "${NORMAL}Setting up Git Global configs..."
git config --global user.name "i3p9"
git config --global user.email "i3p9@users.noreply.github.com"

printf "${GREEN}Done\n"

printf "Installing Homebrew... might ask you for sudo permissions...\n"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
printf "Installing Homebrew...${GREEN}Done\n"


printf "Downloading apps via brew..."

brew install python@3.9
brew install python-tk@3.9
brew install git
brew install nano
brew install gnupg
brew install tvnamer
brew install wget
brew install thefuck
brew install node
brew install rclone
brew install pinentry-mac
brew install curl
brew install tree
brew install zsh zsh-completions
brew install pipx

printf "${GREEN}Done\n"
printf "${NORMAL}Downloading cask apps via brew..."

brew install --cask google-chrome itsycal iina coteditor visual-studio-code
brew install --cask typora appcleaner imageoptim avibrazil-rdm android-file-transfer
brew install --cask android-platform-tools cyberduck dozer lyricsx cloudflare-warp
brew install --cask rectangle maccy dozer raycast iterm2 authy discord keka
brew install --cask temurin jdownloader
brew tap homebrew/cask-fonts
brew install --cask font-iosevka
printf "${GREEN}Done\n"

printf "${CYAN}Setting up zsh, oh-my-zsh, iterm2, powerlevel10k\n"

printf "Setting up files for iTerm..."
ITERM2_COLOR_THEME_NAME="vscode.itermcolors"
ITERM2_COLOR_THEME_DEST=/tmp
ITERM2_COLOR_THEME_SOURCE="https://raw.githubusercontent.com/i3p9/mac-setup/main/files/iterm2/vscode.itermcolors"

cd $ITERM2_COLOR_THEME_DEST
wget -O $ITERM2_COLOR_THEME_NAME $ITERM2_COLOR_THEME_SOURCE > /dev/null 2>&1
open "${ITERM2_COLOR_THEME_DEST}/${ITERM2_COLOR_THEME_NAME}"

printf "${GREEN}Done\n"

printf "${YELLOW}Change the font to Iosevka Term and Color theme to vscode manually\n"


printf "${NORMAL}Setting up Oh-my-zsh..."
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
printf "${GREEN}Done\n"


printf "${NORMAL}Setting up powerlevel 10k..."
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
## TO DO CHANGE THEME TO powerlevel10k in .zshrc
printf "${GREEN}Done\n"


printf "${NORMAL}Setting up Oh-my-zsh plugins..."
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

sed -i '' -e 's/^plugins=.*/plugins=(colored-man-pages pip python brew osx zsh-syntax-highlighting zsh-autosuggestions)/' $HOME/.zshrc
printf "${GREEN}Done\n"


## TO DO
# setup GPG as well

# TVNAMER
printf "${NORMAL}Setting Up Tvnamer..."
mkdir ~/.config/tvnamer && cd "$_"
wget https://github.com/i3p9/mac-setup/raw/main/files/tvnamer.json
printf "${GREEN}Done\n"

#IINA
printf "${NORMAL}Setting Up Trakt Scrobbler..."
pipx ensurepath
pipx install trakt-scrobbler
source ~/.zshrc
printf "${GREEN}Done\n"

printf "${NORMAL}Setting up IINA Configs..."
mkdir ~/.config/mpv/
touch ~/.config/mpv/mpv.conf
echo -e "input-ipc-server=/tmp/mpv-socket\naf=lavfi=[loudnorm=I=-16:TP=-3:LRA=4]" >> ~/.config/mpv/mpv.conf
printf "${GREEN}Done\n"

printf "${YELLOW}IINA's mpv config has been set properly, now open inna preferences, go to advanced"
printf "and turn on Advanced settings and config location"

printf "${NORMAL}Now trakts scrobbler has to be setup, follow the on screen instructions"
printf "${YELLOW}Select mpv as the player when asked"
trakts init
printf "Trakts setup is done..."
