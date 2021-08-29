# Setup Terminal

Step 0 is to install `homebrew`

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Then do `brew install --cask iterm2` to install iTerm2. We're gonna abandon `Terminal.app` and head straight to iTerm2. Lets Setup iTerm2 now.

## font

Iosevka is my font of choice right now. Install the font by:

```bash
brew tap homebrew/cask-fonts
brew install --cask font-iosevka
```

## shell

* Update zsh and completions by `brew install zsh zsh-completions`
* Install oh-my-zsh. We'll complete setup oh-my-zsh just in a second.

```bash
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## theme

* Download the current theme and set it as default. Currently using the VSCode Dark Theme. (There's other themes in the folder as well)

```bash
wget https://raw.githubusercontent.com/i3p9/mac-setup/main/files/iterm2/vscode.itermcolors
```

* Change the font to Iosevka Term, size 16. (Depends entirely on your preferences, I like big sharp fonts)

## powerlevel10k

Download powerlevel10k via

```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

After downloading, set it as a theme in `~/.zshrc`. To do that, edit this line `ZSH_THEME="powerlevel10k/powerlevel10k"` in `~/.zshrc`

After you're done, open a new tab and run `p10k configure` to configure p10k. I personally prefer no fancy icons, lean and fluent prompt.

## downloading plugins

`zsh-syntax-highlighting` and `zsh-autosuggestions` would have been already installed but not seen by oh-my-zsh so it will throw errors, to fix the errors, do following

```bash
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
```

## setup oh-my-zsh plugins

Open `.zshrc` by `nano ~/.zshrc` and add the edit the plugings line to this. Depends entirely on your own preferences, you can find the list and description of plugins [here](https://github.com/ohmyzsh/ohmyzsh/wiki/Plugins)

```bash
plugins=(git colored-man-pages pip python brew osx zsh-syntax-highlighting zsh-autosuggestions)
```

## backup/Restore Keymaps and Profiles

There are backups of keymaps and profile in the `files/iterm2/` folder, grab those and import.

## settings I prefer

* Pref > Pointer > Enable Focus follows mouse. Super convenient.

