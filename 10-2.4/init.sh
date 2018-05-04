#!/bin/sh

echo "Initializing PostGIS extensions for $POSTGRES_DB"
psql --dbname="$POSTGRES_DB" << EOF
    CREATE EXTENSION IF NOT EXISTS postgis;
    CREATE EXTENSION IF NOT EXISTS postgis_topology;
    CREATE EXTENSION IF NOT EXISTS postgis_sfcgal;
EOF
