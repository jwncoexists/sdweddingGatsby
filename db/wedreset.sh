#!/bin/bash
cd $(dirname $0)

set -e
dropdb wedding 2>/dev/null || true
createdb wedding
psql -1Xv ON_ERROR_STOP=1 -f wedschema.sql -f weddata.sql wedding

echo "✅ DB reset"