# Setting up Applications

This is gonna take some time. Let's start with the basic brew apps that needs configuration.

```bash
brew install python3
echo "alias python=/usr/local/bin/python3" >> ~/.zshrc
echo "alias pip=/usr/local/bin/pip3" >> ~/.zshrc
```

Python is setup.

Let's install the rest of the applications. 

```bash
brew install wget youtube-dl aria2 tree tvnamer mas gnupg thefuck tldr
```

Let's hop on over the GUI apps, using `--cask`

```bash
brew install --cask adoptopenjdk handbrake monitorcontrol altserver iina notion appcleaner imageoptim slack authy iterm2 spotify avibrazil-rdm jdownloader transmission cloudflare-warp keka transmission-remote-gui discord lyricsx typora docker mac2imgur visual-studio-code google-chrome maccy xampp cyberduck unified-remote
```

That's gonna take some time. In the meantime you should start setting up Git and integrate it with Github.