SCRIPT_DIR=$( dirname "${BASH_SOURCE[0]}" )

# script will NOT work without docker-compose
if [ -x "${SCRIPT_DIR}/docker-compose-check.sh" ]; then
    # script should work in Linux environments without this
    if [ -x "$(docker-machine)" ]; then
        eval $(docker-machine env)
    fi

    # shut down anything previously built, and erase volumes
    docker-compose down --volumes

    # rebuild images even if they've been built before
    docker-compose up -d --build --remove-orphans

    # the wordpress docker image doesn't allow plugin/theme management
    # or media uploads by default
    bash -c "${SCRIPT_DIR}/fix-wp-permissions.sh"

    echo "Sleeping for 60 seconds to allow Docker containers to finish loading..."
    
    sleep 60

    echo "Bootstrapping unit test runner..."

    "${SCRIPT_DIR}/bootstrap-tests.sh"
fi