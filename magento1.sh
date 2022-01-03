#!/usr/bin/env bash

docker exec -i magento mysql magento < ./M1-files/brazilian_states.sql

docker exec -it magento chown -R www-data.root /app

