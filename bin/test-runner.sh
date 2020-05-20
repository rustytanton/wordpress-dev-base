SCRIPT_DIR=$( dirname "${BASH_SOURCE[0]}" )
KILL_MSG="Press Ctrl + C to stop"

if [ -x "$(command -v fswatch)" ]; then
    clear
    echo "PHPUnit test runner started..."
    echo $KILL_MSG
    fswatch -r -e ".*" -i "\\.php$" ./src | (while read; do clear && ${SCRIPT_DIR}/phpunit.sh --colors=always && echo $KILL_MSG; done)
else
    echo "\n\nTest runner requires fswatch utility...\n\n"\
"See: https://github.com/emcrisostomo/fswatch\n\n"
fi