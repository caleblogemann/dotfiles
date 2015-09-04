# check to make sure brew is installed otherwise print warning
if [[ brew is installed ]]; then
    brew update
    brew upgrade
else
    echo "Brew is not installed"
fi

