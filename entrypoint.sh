#!/bin/sh
set -e

# Bridge Railway PORT to Grafana
export GF_SERVER_HTTP_PORT="${PORT:-3000}"

# Bridge Railway DATABASE_URL to Grafana database config
# Railway PostgreSQL provides: postgres://user:pass@host:port/dbname
# Grafana needs: GF_DATABASE_TYPE + GF_DATABASE_URL with postgresql:// scheme
if [ -n "$DATABASE_URL" ]; then
    export GF_DATABASE_TYPE="postgres"
    export GF_DATABASE_URL="$(echo "$DATABASE_URL" | sed 's|^postgres://|postgresql://|')"
fi

exec /run.sh "$@"
