# Setup Terminal

Step 0 is to install `homebrew`

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Then do `brew install --cask iterm2` to install iTerm2. We're gonna abandon `Terminal.app` and head straight to iTerm2. Lets Setup iTerm2 now.

## New method of my terminal setup

While manually mananing plugins or even using Oh-my-zsh is fun, I have swtiched to zsh-for-humans. It's made by the same person who made Powerlevel10k and it's simply amazing for someone who doesn't want to deal with the hassle of installing plugins themselves. So if you follow these steps below, you won't need to go though my older method of setting up the terminal.

* Install [zsh-for-humans](https://github.com/romkatv/zsh4humans)

```bash
if command -v curl >/dev/null 2>&1; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/romkatv/zsh4humans/v5/install)"
else
  sh -c "$(wget -O- https://raw.githubusercontent.com/romkatv/zsh4humans/v5/install)"
fi
```

* After installing, you can use `z4h update` to update zsh-for-humans.



## font

PragmataPro is my font of choice right now. Get it from [here](https://fsd.it/shop/fonts/pragmatapro/) Iosevka is a very close second, it's free and open source. Install the font by:

```bash
brew tap homebrew/cask-fonts
brew install --cask font-iosevka
```

## theme

* Download the current theme and set it as default. Currently using the VSCode Dark Theme. (There's other themes in the folder as well)

```bash
wget https://raw.githubusercontent.com/i3p9/mac-setup/main/files/iterm2/vscode.itermcolors
```

* Change the font to PragmataPro, size 16. (Depends entirely on your preferences, I like big sharp fonts)

---
*old version starts here*

## shell

* Update zsh and completions by `brew install zsh zsh-completions`
* Install oh-my-zsh. We'll complete setup oh-my-zsh just in a second.

```bash
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

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

