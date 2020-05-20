SCRIPT_DIR=$( dirname "${BASH_SOURCE[0]}" )
DUMP_DIR="${SCRIPT_DIR}/../provision/mysql/data"
mkdir -p $DUMP_DIR
rm -f "${DUMP_DIR}/dump.sql"
docker-compose exec mysql sh -c 'exec mysqldump --databases wordpress -uroot -p"$MYSQL_ROOT_PASSWORD" 2>/dev/null' > "${DUMP_DIR}/dump.sql"
