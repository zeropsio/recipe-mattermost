#!/bin/bash

set -o pipefail
set -e

export PGPASSWORD=${pgdb_password}

INIT_DONE=$(psql -h ${pgdb_hostname} -U ${pgdb_user} pgdb -t -c "SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'db_migrations';" | tr -d '[:blank:]')
if [[ ${INIT_DONE} -ne 1 ]]; then
    mattermost db init -c ${connectionString}
fi

mattermost db migrate -c ${connectionString}