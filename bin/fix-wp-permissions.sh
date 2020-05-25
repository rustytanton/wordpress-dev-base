SCRIPT_DIR=$( dirname "${BASH_SOURCE[0]}" )

if [ -x "${SCRIPT_DIR}/depcheck.sh" ]; then
    docker-compose exec wordpress chown www-data:www-data -R /var/www/html/wp-content
fi