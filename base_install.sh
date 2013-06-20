#!/bin/sh

if type "brew" &> /dev/null; then
  echo "Brew is already installed"
else
  echo "Brew not installed. Attempting to install"
  ruby -e "$(curl -fsSL https://raw.github.com/andrewoke/homebrew/go)"
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
	echo "Do you wish to install Google Chrome?"
	select yn in "Yes" "No"; do
		case $yn in
			Yes ) brew cask install --appdir="/Applications" google-chrome; break;;
			No ) break;;
		esac
	done
fi

if [ -x /Applications/Arduino.app ] ; then
  echo "Arduino already installed"
else
	echo "Do you wish to install Arduino?"
	select yn in "Yes" "No"; do
		case $yn in
			Yes )  brew cask install --appdir="/Applications" arduino; break;;
			No ) break;;
		esac
	done
fi

if [ -x /Applications/Dropbox.app ] ; then
  echo "Dropbox already installed"
else
	echo "Do you wish to install Dropbox?"
	select yn in "Yes" "No"; do
		case $yn in
			Yes )  brew cask install --appdir="/Applications" dropbox; break;;
			No ) break;;
		esac
	done
fi

if [ -x "/Applications/Plex Media Server.app" ] ; then
  echo "Plex media server already installed"
else
	echo "Do you wish to install Plex Media Server?"
	select yn in "Yes" "No"; do
		case $yn in
			Yes )  brew cask install --appdir="/Applications" plex-media-server; break;;
			No ) break;;
		esac
	done
fi

if [ -x /Applications/VLC.app ] ; then
  echo "VLC already installed"
else
	echo "Do you wish to install VLC?"
	select yn in "Yes" "No"; do
		case $yn in
			Yes )  brew cask install --appdir="/Applications" arduino; break;;
			No ) break;;
		esac
	done
  brew cask install --appdir="/Applications" vlc
fi

if [ -x /Applications/VirtualBox.app ] ; then
  echo "VirtualBox already installed"
else
	echo "Do you wish to install VirtualBox?"
	select yn in "Yes" "No"; do
		case $yn in
			Yes )  brew cask install --appdir="/Applications" virtualbox; break;;
			No ) break;;
		esac
	done
fi

if [ -x /Applications/Subler.app ] ; then
  echo "Subler already installed"
else
	echo "Do you wish to install Subler?"
	select yn in "Yes" "No"; do
		case $yn in
			Yes )  brew cask install --appdir="/Applications" subler; break;;
			No ) break;;
		esac
	done
fi

if [ -x /Applications/MacVim.app ] ; then
  echo "MacVim already installed"
else
	echo "Do you wish to install MacVim?"
	select yn in "Yes" "No"; do
		case $yn in
			Yes )  brew cask install --appdir="/Applications" macvim; break;;
			No ) break;;
		esac
	done
fi

if [ -x /Applications/HandBrake.app ] ; then
  echo "HandBrake already installed"
else
	echo "Do you wish to install Handbrake?"
	select yn in "Yes" "No"; do
		case $yn in
			Yes )  brew cask install --appdir="/Applications" handbrake; break;;
			No ) break;;
		esac
	done
fi

if [ -x /Applications/Firefox.app ] ; then
  echo "Firefox already installed"
else
	echo "Do you wish to install Firefox?"
	select yn in "Yes" "No"; do
		case $yn in
			Yes )  brew cask install --appdir="/Applications" firefox; break;;
			No ) break;;
		esac
	done
fi

if [ -x /Applications/OpenSCAD.app ] ; then
  echo "OpenSCAD already installed"
else
	echo "Do you wish to install OpenSCAD?"
	select yn in "Yes" "No"; do
		case $yn in
			Yes )  brew cask install --appdir="/Applications" openscad; break;;
			No ) break;;
		esac
	done
fi

if [ -x /Applications/Steam.app ] ; then
  echo "Steam already installed"
else
	echo "Do you wish to install Steam?"
	select yn in "Yes" "No"; do
		case $yn in
			Yes )  brew cask install --appdir="/Applications" steam; break;;
			No ) break;;
		esac
	done
fi

if [ -x /Applications/Origin.app ] ; then
  echo "Origin already installed"
else
	echo "Do you wish to install Origin?"
	select yn in "Yes" "No"; do
		case $yn in
			Yes )  brew cask install --appdir="/Applications" origin; break;;
			No ) break;;
		esac
	done
fi

if [ -x /Applications/Skype.app ] ; then
  echo "Skype already installed"
else
	echo "Do you wish to install Skype?"
	select yn in "Yes" "No"; do
		case $yn in
			Yes )  brew cask install --appdir="/Applications" skype; break;;
			No ) break;;
		esac
	done
fi

if [ -x /Applications/HandBrakeCLI ] ; then
  echo "HandBrakeCLI already installed"
else
	echo "Do you wish to install HandbrakeCLI?"
	select yn in "Yes" "No"; do
		case $yn in
			Yes )  brew cask install --appdir="/Applications" handbrakecli; break;;
			No ) break;;
		esac
	done
fi

if [ -x /Applications/owncloud.app ] ; then
  echo "owncloud already installed"
else
	echo "Do you wish to install owncloud?"
	select yn in "Yes" "No"; do
		case $yn in
			Yes )  brew cask install --appdir="/Applications" owncloud; break;;
			No ) break;;
		esac
	done
fi

if [ -x /usr/local/Cellar/zsh/5.0.2/bin/zsh ] ; then
  echo "zsh already installed"
else
	echo "Do you wish to install ZSH?"
	select yn in "Yes" "No"; do
		case $yn in
			Yes )  brew install zsh; break;;
			No ) break;;
		esac
	done
fi

if [ -x /opt/homebrew-cask/Caskroom/true-crypt ] ; then
  echo "true-crypt already installed"
else
	echo "Do you wish to install True Crypt?"
	select yn in "Yes" "No"; do
		case $yn in
			Yes )  brew cask install --appdir="/Applications" true-crypt; break;;
			No ) break;;
		esac
	done
fi

if [ -x /Applications/Processing.app ] ; then
  echo "processing already installed"
else
	echo "Do you wish to install Processing?"
	select yn in "Yes" "No"; do
		case $yn in
			Yes )  brew cask install --appdir="/Applications" processing; break;;
			No ) break;;
		esac
	done
fi

#TODO clone the data stuff into /usr/local/etc sickbeard and couchpotatoserver
if [ -d /usr/local/Cellar/sickbeard ] ; then
  echo "sickbeard already installed"
else
	echo "Do you wish to install SickBeard?"
	select yn in "Yes" "No"; do
		case $yn in
			Yes )  sudo easy_install pip; sudo pip install cheetah; brew install sickbeard; ln -sfv /usr/local/opt/sickbeard/*.plist ~/Library/LaunchAgents; launchctl load ~/Library/LaunchAgents/homebrew.mxcl.sickbeard.plist; break;;
			No ) break;;
		esac
	done
fi

if [ -x /user/local/Cellar/couchpotatoserver ] ; then
  echo "couch potato already installed"
else
	echo "Do you wish to install Couch Potato?"
	select yn in "Yes" "No"; do
		case $yn in
			Yes )  brew install couchpotatoserver; ln -sfv /usr/local/opt/couchpotatoserver/*.plist ~/Library/LaunchAgents; launchctl load ~/Library/LaunchAgents/homebrew.mxcl.couchpotatoserver.plist; break;;
			No ) break;;
		esac
	done
fi

if [ -x /Applications/EyeTV.app ] ; then
  echo "eyetv already installed"
else
	echo "Do you wish to install EyeTV?"
	select yn in "Yes" "No"; do
		case $yn in
			Yes )  brew cask install --appdir="/Applications" eye-tv; break;;
			No ) break;;
		esac
	done
fi
