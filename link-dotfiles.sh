#!/bin/sh

rm $HOME/.gitconfig
ln -s $HOME/.dotfiles/dotfiles/.gitconfig $HOME/.gitconfig
rm $HOME/.zshrc
ln -s $HOME/.dotfiles/dotfiles/.zshrc $HOME/.zshrc
rm -rf $HOME/.vim
ln -s $HOME/.dotfiles/dotfiles/.vim $HOME/.vim
rm -rf $HOME/.drushrc.php
ln -s $HOME/.dotfiles/dotfiles/.drushrc.php $HOME/.drushrc.php
