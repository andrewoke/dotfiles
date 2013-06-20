#!/bin/sh

if type "brew" &> /dev/null; then
  echo "Brew is already installed"
else
  echo "Brew not installed. Attempting to install"
  ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"
  brew doctor
fi

git config --global user.email "andrew.oke@gmail.com"
git config --global user.name "Andrew Oke"

#let's us install all those programs that aren't in the app store
if [ -x /usr/local/Cellar/brew-cask ]; then
  echo "Brew cask already installed"
else
  brew tap andrewoke/homebrew-cask	
  brew install brew-cask
fi

if [ -x /Applications/Google\ Chrome.app ] ; then
  echo "Google chrome already installed"
else
  brew cask install --appdir="/Applications" google-chrome
fi

if [ -x /Applications/Arduino.app ] ; then
  echo "Arduino already installed"
else
  brew cask install --appdir="/Applications" arduino
fi

if [ -x /Applications/Dropbox.app ] ; then
  echo "Dropbox already installed"
else
  brew cask install --appdir="/Applications" dropbox
fi

if [ -x "/Applications/Plex Media Server.app" ] ; then
  echo "Plex media server already installed"
else
  brew cask install --appdir="/Applications" plex-media-server
fi

if [ -x /Applications/VLC.app ] ; then
  echo "VLC already installed"
else
  brew cask install --appdir="/Applications" vlc
fi

if [ -x /Applications/VirtualBox.app ] ; then
  echo "VirtualBox already installed"
else
  brew cask install --appdir="/Applications" virtualbox
fi

if [ -x /Applications/Subler.app ] ; then
  echo "Subler already installed"
else
  brew cask install --appdir="/Applications" subler
fi

if [ -x /Applications/MacVim.app ] ; then
  echo "MacVim already installed"
else
  brew cask install --appdir="/Applications" macvim
fi

if [ -x /Applications/HandBrake.app ] ; then
  echo "HandBrake already installed"
else
  brew cask install --appdir="/Applications" handbrake
fi

if [ -x /Applications/Firefox.app ] ; then
  echo "Firefox already installed"
else
  brew cask install --appdir="/Applications" firefox
fi

if [ -x /Applications/OpenSCAD.app ] ; then
  echo "OpenSCAD already installed"
else
  brew cask install --appdir="/Applications" openscad
fi

if [ -x /Applications/Steam.app ] ; then
  echo "Steam already installed"
else
  brew cask install --appdir="/Applications" steam
fi

if [ -x /Applications/Origin.app ] ; then
  echo "Origin already installed"
else
  brew cask install --appdir="/Applications" origin
fi

if [ -x /Applications/Skype.app ] ; then
  echo "Skype already installed"
else
  brew cask install --appdir="/Applications" skype
fi

if [ -x /Applications/HandBrakeCLI ] ; then
  echo "HandBrakeCLI already installed"
else
  brew cask install --appdir="/Applications" handbrakecli
fi

if [ -x /Applications/owncloud.app ] ; then
  echo "owncloud already installed"
else
  brew cask install --appdir="/Applications" owncloud
fi

if [ -x /usr/local/Cellar/zsh/5.0.2/bin/zsh ] ; then
  echo "zsh already installed"
else
  brew install zsh
fi

