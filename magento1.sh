#!/usr/bin/env bash

docker exec -i app mysql magento < ./M1-files/brazilian_states.sql

docker exec -it app chown -R www-data.root /app

