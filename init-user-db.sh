#!/bin/bash
set -e 

cp -a home/dados_alice/. /var/lib/postgresql/data

psql -v ON_ERROR_STOP=1 --username $POSTGRES_USER --dbname alice_case <<-EOSQL
    COPY public.member
    FROM '/var/lib/postgresql/data/member.csv' 
    DELIMITER ';'
    CSV HEADER;
EOSQL

psql -v ON_ERROR_STOP=1 --username $POSTGRES_USER --dbname alice_case <<-EOSQL
    COPY public.plan
    FROM '/var/lib/postgresql/data/plan.csv' 
    DELIMITER ';' 
    CSV HEADER;
EOSQL

psql -v ON_ERROR_STOP=1 --username $POSTGRES_USER --dbname alice_case <<-EOSQL
    COPY public.action_plan
    FROM '/var/lib/postgresql/data/action_plan.csv' 
    DELIMITER ';' 
    CSV HEADER;
EOSQL

psql -v ON_ERROR_STOP=1 --username $POSTGRES_USER --dbname alice_case <<-EOSQL
    COPY public.contact
    FROM '/var/lib/postgresql/data/contact.csv' 
    DELIMITER ';' 
    CSV HEADER;
EOSQL

psql -v ON_ERROR_STOP=1 --username $POSTGRES_USER --dbname alice_case <<-EOSQL
    COPY public.comercial
    FROM '/var/lib/postgresql/data/comercial.csv' 
    DELIMITER ';' 
    CSV HEADER;
EOSQL

psql -v ON_ERROR_STOP=1 --username $POSTGRES_USER --dbname alice_case <<-EOSQL
    COPY public.acquisition
    FROM '/var/lib/postgresql/data/acquisition.csv' 
    DELIMITER ';' 
    CSV HEADER;
EOSQL
