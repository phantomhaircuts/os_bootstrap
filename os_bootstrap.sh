echo "Begin Installation"

# Chek for Homebrew
if test ! $(which brew); then
    echo "Install Homebrew."
        ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi


# Core Utils + Bash 4
brew update
brew tap homebrew/dupes
brew install coreutils
brew install gnu-sed --with-default-names
brew install gnu-tar --with-default-names
brew install gnu-indent --with-default-names
brew install gnu-which --with-default-names
brew install gnu-grep --with-default-names
brew install findutils
brew install bash

PACKAGES=(
    ack
    autoconf
    automake
    boot2docker
    ffmpeg
    gettext
    gifsicle
    git
    graphviz
    hub
    imagemagick
    jq
    libjpeg
    libmemcached 
    lynx
    markdown
    memcached
    mercurial
    npm
    pkg-config
    postgresql
    python
    python3
    pypy
    rabbitmq
    rename
    ssh-copy-id
    terminal-notifier
    the_silver_searcher
    tmux
    tree
    vim
    wget
)

echo "Install Packages."
brew install ${PACKAGES[@]}

echo "Clean Up"
brew cleanup

echo "Install Cask
brew install caskroom/cask/brew-cask

CASKS=(
    1password
    brave-browser
    iterm2
    signal
    spectacle
)

echo "Install casks."
brew cask install ${CASKS[@]}
