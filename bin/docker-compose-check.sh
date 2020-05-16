if ! [ -x "$(docker-compose)" ]; then
    echo "\n\n--\nYou need to install docker-compose to use this script...\n\n"\
"On Mac / Windows install Docker Desktop, or if you have Homebrew on a Mac try:\n\n"\
"brew install docker docker-machine docker-compose\n"\
"brew cask install virtualbox\n"\
"docker-machine create --driver virtualbox default\n"\
"eval \"\$(docker-machine env default)\"\n--\n\n"
    exit 1
fi