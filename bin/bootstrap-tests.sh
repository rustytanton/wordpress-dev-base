SCRIPT_DIR=$( dirname "${BASH_SOURCE[0]}" )

if [ -x "${SCRIPT_DIR}/docker-compose-check.sh" ]; then
    # docker-compose run --rm wordpress-phpunit /app/install-wp-tests.sh wordpress_test root '' mysql-phpunit latest true
    docker-compose run --rm wordpress-phpunit /usr/local/bin/install-wp-tests.sh wordpress_test root '' mysql-phpunit latest true
fi