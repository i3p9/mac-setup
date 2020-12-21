echo "Assuming homebrew is installed..."
brew update

binaries=(
  python3
  wget
  youtube-dl
  aria2
  tree
  tvnamer
  mas
  gnupg
  node
)

apps=(
  adoptopenjdk
  handbrake
  monitorcontrol
  altserver
  iina
  notion
  appcleaner
  imageoptim
  slack
  authy
  iterm2
  spotify
  avibrazil-rdm
  jdownloader
  transmission
  cloudflare-warp
  keka
  transmission-remote-gui
  discord
  lyricsx
  typora
  docker
  mac2imgur
  visual-studio-code
  google-chrome
  maccy
  xampp
)

echo "installing binaries..."
brew install ${binaries[@]}
brew install ${apps[@]} --cask

#Tap into fonts
brew tap homebrew/cask-fonts
brew cask install font-iosevka

brew cleanup