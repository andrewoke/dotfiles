#!/bin/sh

sudo -v

# Keep-alive: update existing `sudo` time stamp until `.osx` has finished
while true; do sudo -n true; sleep 1800; kill -0 "$$" || exit; done 2>/dev/null &

if type "brew" &> /dev/null; then
  echo "Brew is already installed"
else
  echo "Brew not installed. Attempting to install"
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew doctor
fi

gitUserEmail=`git config --global user.email`
gitUserEmailLength=${#gitUserEmail}
if [ $gitUserEmailLength -eq 0 ] ; then
	read -e -p "Enter the git global user.email " gitUserEmail
	git config --global user.email $gitUserEmail
fi

gitUserName=`git config --global user.name`
gitUserNameLength=${#gitUserName}
if [ $gitUserNameLength -eq 0 ] ; then
	read -e -p "Enter git global user.name " gitUserName
	git config --global user.name $gitUserName
fi

#let's us install all those programs that aren't in the app store
if [ -x /usr/local/Cellar/brew-cask ]; then
  echo "Brew cask already installed"
else
    brew install caskroom/cask/brew-cask
fi

if [ -x /usr/local/bin/node ]; then
  echo "nodejs already installed"
else
  brew install nodejs
fi

if [ -x /usr/local/bin/phonegap ]; then
  echo "phonegap already installed"
else
  sudo npm install -g phonegap
fi

if [ -x /usr/local/bin/cordova ]; then
  echo "cordova already installed"
else
  sudo npm install -g cordova
fi

if [ -x /usr/local/bin/ant ]; then
	echo "ant already installed"
else
	brew install ant
fi

if [ -x /usr/local/bin/mongodb ]; then
	echo "mongodb already installed"
else
	brew install mongodb
fi

if [ -x /usr/local/bin/grunt ]; then
	echo "grunt already installed"
else
	npm install -g grunt-cli
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

if [ -x /Applications/Slic3r.app ] ; then
  echo "slic3r already installed"
else
        echo "Do you wish to install Slic3r?"
        select yn in "Yes" "No"; do
                case $yn in
                        Yes ) brew cask install --appdir="/Applications" slic3r; break;;
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

if [ -x "/Applications/Plex.app" ] ; then
  echo "Plex already installed"
else
	echo "Do you wish to install Plex Frontend?"
	select yn in "Yes" "No"; do
		case $yn in
			Yes )  brew cask install --appdir="/Applications" plex; break;;
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
			Yes )  brew cask install --appdir="/Applications" vlc; break;;
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

if [ -x /usr/local/Cellar/zsh/5.0.6/bin/zsh ] ; then
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

if [ -x /usr/X11 ] ; then
  echo "xquartz ready installed"
else
	echo "Do you wish to install xquartz?"
	select yn in "Yes" "No"; do
		case $yn in
			Yes )  brew cask install x-quartz; sudo ln -s /opt/X11 /usr/X11; break;;
			No ) break;;
		esac
	done
fi
