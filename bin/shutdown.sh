SCRIPT_DIR=$( dirname "${BASH_SOURCE[0]}" )

# script will NOT work without docker-compose
if [ -x "${SCRIPT_DIR}/docker-compose-check.sh" ]; then
    # non-destructive to volumes, unlike when run from setup.sh
    docker-compose down
fi