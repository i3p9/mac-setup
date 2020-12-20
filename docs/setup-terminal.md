# Setup Terminal

Step 0 is to install `homebrew`

```text
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Then do `brew install iterm2 --cask` to install iTerm2. We're gonna abandon `Terminal.app` and head straight to iTerm2. Lets Setup iTerm2 now. 

## Font

Iosevka is my font of choice right now. Install the font by:

```text
brew tap homebrew/cask-fonts
brew cask install font-iosevka
```

## Shell

* Update zsh and completions by `brew install zsh zsh-completions`
* Install oh-my-zsh. We'll complete setup oh-my-zsh just in a second.

```text
 sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Let's make iterm2 look pretty first.

* Download the current theme I'm into and set it as default. \(There's other theme in the folder as well\)

```text
wget https://raw.githubusercontent.com/i3p9/mac-setup/main/files/iterm2/vscode.itermcolors
```

* While you're there, change the font to Iosevka Term, size 16. \(Experimenting\)
* ...and `Appearance>Tab>Select Always show tab bar`

## Powerlevel10k

Step one is downloading `powerlevel10k`

```text
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

After downloading, set it as a theme in `~/.zshrc`. To do that, edit this line `ZSH_THEME="powerlevel10k/powerlevel10k"` in `~/.zshrc`

After you're done, just run `p10k configure` to configure p10k. Although, a backup config file is already there in `/files/iterm2/p10k.zsh` So better to just get it, and save the content in `~/.p10k.zsh`

## Finishing up oh-my-zsh configuration

Open `.zshrc` by `nano ~/.zshrc` and add the line below to the file and save:

```text
plugins=(git colored-man-pages colorize pip python brew osx zsh-syntax-highlighting zsh-autosuggestions)
```

#### Troubleshooting

`zsh-syntax-highlighting` and `zsh-autosuggestions` would have been already installed but not seen by oh-my-zsh so it will throw errors, to fix the errors, do following

```text
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
```

Should be good to go. 

