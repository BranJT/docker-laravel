#!/bin/bash
set -e
# CREATE USER docker; estaba primero de los comandos naranja
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE USER laravel;
    CREATE DATABASE cascajal;
    GRANT ALL PRIVILEGES ON DATABASE cascajal TO laravel;
EOSQL