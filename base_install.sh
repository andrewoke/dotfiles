#!/bin/sh

sudo -v

# Keep-alive: update existing `sudo` time stamp until `.osx` has finished
while true; do sudo -n true; sleep 120; kill -0 "$$" || exit; done 2>/dev/null &

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

if [ -x /usr/local/Cellar/couchpotatoserver ] ; then
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

if [ -x /opt/X11 ] ; then
  echo "xquartz ready installed"
else
	echo "Do you wish to install xquartz?"
	select yn in "Yes" "No"; do
		case $yn in
			Yes )  brew cask install xquartz; sudo ln -s /opt/X11 /usr/X11; break;;
			No ) break;;
		esac
	done
fi

if [ -x /opt/X1122 ] ; then
  echo "aegir ready installed"
else
	echo "Do you wish to install aegir?"
	select yn in "Yes" "No"; do
		case $yn in
			Yes ) 
				sudo mkdir /Library/Server /Library/Server/Mail /Library/Server/Mail/Data /Library/Server/Mail/Data/spool /Library/Server/Mail/Data/spool/maildrop;
				sudo chown _postfix:_postdrop /Library/Server/Mail/Data/spool/maildrop;
				sudo chmod 777 /Library/Server/Mail/Data/spool/maildrop;
				sudo postfix start;
				sudo touch /etc/postfix/sasl_passwd;
				sudo chmod 666 /etc/postfix/sasl_passwd;
				sudo chmod 666 /etc/postfix/main.cf;
				sudo echo "smtp.gmail.com:587 email:password" > /etc/postfix/sasl_passwd;
				sudo postmap /etc/postfix/sasl_passwd;
				sudo cat $HOME/.dotfiles/aegir/postfix-main.cf >> /etc/postfix/main.cf;
				sudo defaults write /System/Library/LaunchDaemons/org.postfix.master.plist RunAtLoad -bool true;
				sudo postfix reload;
				brew uninstall gzip
				brew tap homebrew/dupes
				brew install homebrew/dupes/gzip
				brew install dnsmasq
				mkdir /usr/local/etc
				cp $(brew --prefix dnsmasq)/dnsmasq.conf.example /usr/local/etc/dnsmasq.conf
				sudo printf "resolv-file=/etc/resolv.dnsmasq.conf\naddress=/.ld/127.0.0.1\nlisten-address=127.0.0.1" > /usr/local/etc/dnsmasq.conf
				sudo printf "# OpenDNS IPv6:\nnameserver 2620:0:ccd::2\nnameserver 2620:0:ccc::2\n# Google IPv6:\nnameserver 2001:4860:4860::8888\nnameserver 2001:4860:4860::8844\n# OpenDNS:\nnameserver 208.67.222.222\nnameserver 208.67.220.220\n# Google:\nnameserver 8.8.8.8\nnameserver 8.8.4.4\n" > /etc/resolv.dnsmasq.conf
				sudo cp $(brew --prefix dnsmasq)/homebrew.mxcl.dnsmasq.plist /Library/LaunchDaemons
				sudo launchctl load -w /Library/LaunchDaemons/homebrew.mxcl.dnsmasq.plist
				sudo launchctl unload -w /System/Library/LaunchDaemons/org.apache.httpd.plist
				curl -s -L -o /tmp/nginx-upload-progress.tar.gz https://github.com/masterzen/nginx-upload-progress-module/tarball/v0.9.0 && mkdir /tmp/nginx-upload-progress && tar zxpf /tmp/nginx-upload-progress.tar.gz --strip-components 1 -C /tmp/nginx-upload-progress && rm /tmp/nginx-upload-progress.tar.gz
				curl -s -L -o /tmp/nginx-fair.tar.gz http://github.com/gnosek/nginx-upstream-fair/tarball/master && mkdir /tmp/nginx-fair && tar zxpf /tmp/nginx-fair.tar.gz --strip-components 1 -C /tmp/nginx-fair && rm /tmp/nginx-fair.tar.gz
				sed -i '-default' 's/\([[:space:]]*\['\''--\)\(with-webdav\)\('\'',[[:space:]]*"\)\(Compile with support for WebDAV module\)\("\]\)/\1\2\3\4\5,%\1with-realip\3Compile with support for RealIP module\5,%\1with-gzip_static\3Compile with support for Gzip Static module\5,%\1with-uploadprogress\3Compile with support for Upload Progress module\5,%\1with-fair\3Compile with support for Fair module\5,%\1with-mp4\3Compile with support for MP4 module\5,%\1with-flv\3Compile with support for FLV module\5,%\1with-stub_status\3Compile with support for Stub Status module\5/; s/\([[:space:]]* args << "--\)\(with-http_dav_module\)\(" if ARGV.include? '\''--with-\)\(webdav\)\('\''.*\)/\1\2\3\4\5%\1with-http_realip_module\3realip\5%\1with-http_gzip_static_module\3gzip_static\5%\1add-module=\/tmp\/nginx-upload-progress\3uploadprogress\5%\1add-module=\/tmp\/nginx-fair\3fair\5%\1with-http_mp4_module\3mp4\5%\1with-http_flv_module\3flv\5%\1with-http_stub_status_module\3stub_status\5/; y/%/\n/' $(brew --prefix)/Library/Formula/nginx.rb
				brew install nginx --with-realip --with-gzip_static --with-mp4 --with-flv --with-stub_status --with-uploadprogress --with-fair
				[ $? -eq 0 ] && rm -rf /tmp/nginx-upload-progress /tmp/nginx-fair
				mkdir -vp $(brew --prefix nginx)/var/{microcache,log,run}
				mv /usr/local/etc/nginx/nginx.conf /usr/local/etc/nginx/nginx.conf.bak
				curl http://realityloop.com/sites/realityloop.com/files/uploads/nginx.conf_.txt > /usr/local/etc/nginx/nginx.conf
				sed -i -e 's/\[username\]/'`whoami`'/' /usr/local/etc/nginx/nginx.conf
				sudo mkdir /var/log/nginx
				sudo mkdir /var/lib/nginx
				brew install mariadb --use-llvm --env=std
				unset TMPDIR
				mysql_install_db --user=`whoami` --basedir="$(brew --prefix mariadb)" --datadir=/usr/local/var/mysql --tmpdir=/tmp
				brew tap josegonzalez/homebrew-php
				brew tap homebrew/dupes
				brew install php53 --with-mysql --with-fpm --with-imap
				brew install php53-xhprof
				brew install php53-xdebug
				brew install php53-uploadprogress
				
				break;;
			No ) break;;
		esac
	done
fi
