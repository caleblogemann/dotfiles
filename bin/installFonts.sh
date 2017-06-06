if [ ! -e ~/Library/Fonts/Inconsolata\ for\ Powerline.otf ]; then
    git clone https://github.com/powerline/fonts.git
    source fonts/install.sh
    rm -rf fonts
else
    echo 'Fonts already installed'
fi
