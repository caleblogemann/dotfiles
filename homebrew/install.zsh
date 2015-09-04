# Check to make sure xcode and xcode command line tools are installed
xcode-select -p
if [[ "$?" != "0" ]]; then
    xcode-select --install
fi

# install homebrew if not already installed
if [[ ! -x /usr/local/bin/brew ]]; then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

function brewInstall(){
    if [[ ! -x /usr/local/bin/$1 ]]; then
        brew install $1 $2
    else
        print brew has already installed $1
    fi
}

# install needed formulas
brewInstall git
brewInstall macvim --override-system-vim
brewInstall node
brewInstall python
brewInstall zsh

if [[ ! -x /usr/local/bin/brew-cask ]]; then
    brew install caskroom/cask/brew-cask
fi

function brewCaskInstall(){
    # TODO: check alternate caskrooms
    if [[ ! -x /opt/homebrew-cask/Caskroom/$1 ]]; then
        brew cask install $1
    else
        print $1 is already installed
    fi
}

# If administrator make sure cask is symlinking to /Applications not ~/Applications
# If not administrator symlink to ~/Applications, and put caskroom in ~/dotfiles/homebrew/Caskroom
#if [[ ]]
#    HOMEBREW_CASK_OPTS='--appdir=/Applications'
#else
#    HOMEBREW_CASK_OPTS='--caskroom=~/dotfiles/homebrew/Caskroom'
#fi
#
#export HOMEBREW_CASK_OPTS

# install cask applications
brewCaskInstall skype
brewCaskInstall google-chrome
brewCaskInstall google-drive
brewCaskInstall dropbox
brewCaskInstall firefox
brewCaskInstall iterm2
brewCaskInstall vlc
brewCaskInstall sage

# new possibilities look into
# brew install r