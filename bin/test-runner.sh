SCRIPT_DIR=$( dirname "${BASH_SOURCE[0]}" )
PROJECT_SRC_DIR=$( realpath "$SCRIPT_DIR/../src" )
KILL_MSG="Press Ctrl + C to stop"

function map_path {
    echo $(echo $1 | awk -v PROJECT_SRC_DIR="$PROJECT_SRC_DIR" '{ sub(PROJECT_SRC_DIR, "/app"); print }')
}

function run_test {
    clear
    DIR=$(basename $(dirname $1))
    MAPPED_FILE_PATH=$(map_path $1)
    echo $KILL_MSG
    if [[ $DIR == "tests" ]]; then
        echo "Testing: $MAPPED_FILE_PATH"
        ${SCRIPT_DIR}/phpunit.sh --colors=always $MAPPED_FILE_PATH
    else
        # take one guess at finding the test path if user saved source
        TEST_PATH=$( dirname $line )/tests/test-$(basename $1)
        TEST_PATH_MAPPED=$(map_path $TEST_PATH) 
        
        if [[ -f $TEST_PATH ]]; then
            echo "Testing: $TEST_PATH_MAPPED"
            ${SCRIPT_DIR}/phpunit.sh --colors=always $TEST_PATH_MAPPED
        else
            echo "Didn't find a matching test file, running all tests"
            ${SCRIPT_DIR}/phpunit.sh --colors=always
        fi
    fi
}

if [ -x "${SCRIPT_DIR}/depcheck.sh" ]; then
    clear
    echo "PHPUnit test runner started..."
    echo $KILL_MSG
    fswatch -r -e ".*" -i "\\.php$" ./src | (while read line; do run_test $line; done)
fi