function hideallfiles(){
    defaults write com.apple.finder AppleShowAllFiles -bool NO
        killall Finder
}
function showallfiles(){
    defaults write com.apple.finder AppleShowAllFiles -bool YES
        killall Finder
}
