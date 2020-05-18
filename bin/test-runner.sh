SCRIPT_DIR=$( dirname "${BASH_SOURCE[0]}" )

if [ -x "$(command -v fswatch)" ]; then
    echo "PHPUnit test runner started..."
    fswatch -r -e ".*" -i "\\.php$" ./src | (while read; do ${SCRIPT_DIR}/phpunit.sh; done)
else
    echo "\n\nTest runner requires fswatch utility...\n\n"\
"See: https://github.com/emcrisostomo/fswatch\n\n"
fi