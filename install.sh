#!/bin/sh

sudo -v

# Keep-alive: update existing `sudo` time stamp until `.osx` has finished
while true; do sudo -n true; sleep 1800; kill -0 "$$" || exit; done 2>/dev/null &

if type "brew" &> /dev/null; then
  echo "Brew is already installed"
else
  echo "Brew not installed. Attempting to install"
  ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go/install)"
  brew doctor
fi

#let's us install all those programs that aren't in the app store
if [ -x /usr/local/Cellar/brew-cask ]; then
  echo "Brew cask already installed"
else
  brew tap phinze/homebrew-cask 
  brew install brew-cask
fi

brew update
brew upgrade

if [ ! -d /usr/local/Cellar/zsh ] ; then
  brew install zsh
fi

if [ ! -d /usr/local/opt/libftdi ] ; then
  brew install libftdi
fi

brew cask install --appdir="/Applications" google-chrome
brew cask install --appdir="/Applications" arduino
brew cask install --appdir="/Applications" dropbox
brew cask install --appdir="/Applications" plex-media-server
brew cask install --appdir="/Applications" plex
brew cask install --appdir="/Applications" vlc
brew cask install --appdir="/Applications" subler
brew cask install --appdir="/Applications" handbrake
brew cask install --appdir="/Applications" firefox
brew cask install --appdir="/Applications" openscad
brew cask install --appdir="/Applications" steam
brew cask install --appdir="/Applications" origin
brew cask install --appdir="/Applications" skype
brew cask install --appdir="/Applications" owncloud
brew cask install --appdir="/Applications" processing
brew cask install --appdir="/Applications" ynab
brew cask install --appdir="/Applications" virtualbox
brew cask install --appdir="/Applications" eyetv
brew cask install xquartz; sudo ln -s /opt/X11 /usr/X11
