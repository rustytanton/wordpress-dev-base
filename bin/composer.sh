SCRIPT_DIR=$( dirname "${BASH_SOURCE[0]}" )

if [ -x "${SCRIPT_DIR}/depcheck.sh" ]; then
    docker-compose run --rm composer $@
fi