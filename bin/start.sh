SCRIPT_DIR=$( dirname "${BASH_SOURCE[0]}" )

# script will NOT work without docker-compose
if [ -x "${SCRIPT_DIR}/docker-compose-check.sh" ]; then
    # script should work in Linux environments without this
    if [ -x "$(docker-machine)" ]; then
        eval $(docker-machine env)
    fi

    # don't rebuild images, run setup.sh if you need to
    docker-compose up -d
fi