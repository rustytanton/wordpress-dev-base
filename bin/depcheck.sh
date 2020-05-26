if ! [ -x "$(command -v docker-compose)" ]; then
    echo "\n\n--\nScript requires docker-compose\n\n"\
"On Mac / Windows install Docker Desktop, or if you have Homebrew on a Mac try:\n\n"\
"brew install docker docker-machine docker-compose\n"\
"brew cask install virtualbox\n"\
"docker-machine create --driver virtualbox default\n"\
"eval \"\$(docker-machine env default)\"\n--\n\n"
    exit 1
fi

if ! [ -x "$(command -v fswatch)" ]; then
    echo "\n\n--\nScript requires fswatch utility\n\n"\
"See: https://github.com/emcrisostomo/fswatch\n--\n\n"
    exit 1
fi

if ! [ -x "$(command -v realpath)" ]; then
    echo "\n\n--\nScript requires realpath utility\n\nIf you have Homebrew on a Mac, try:\n"\
"brew install coreutils\n--\n\n"
    exit 1
fi

# Platform-specific
if [[ $(uname) == "Darwin" ]]; then # MacOS
    if ! [ -x "$(command -v docker-machinee)" ]; then
        echo "\n\n--\ndocker-machine required on Mac OS\n"\
"If you have Homebrew try:\n
brew install docker-machine\n--\n\n"
    exit 1
    fi
fi