# Check to make sure xcode and xcode command line tools are installed
#xcode-select -p
#if [[ "$?" != "0" ]]; then
#    xcode-select --install
#fi

# install homebrew if not already installed
if [[ ! -x /usr/local/bin/brew ]]; then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update
brew upgrade

brew tap Homebrew/bundle
brew bundle
