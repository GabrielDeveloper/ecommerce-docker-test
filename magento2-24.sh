#!/usr/bin/env bash

docker exec -it app composer config -g repo.packagist composer https://packagist.org

docker exec -it app php -f /app/bin/magento setup:install --base-url="http://127.0.0.1" --backend-frontname="admin" --db-host="localhost" --db-name=magento2 --db-user=root --admin-firstname="admin" --admin-lastname="lastame" --admin-email="admin@admin.com" --admin-user="admin" --admin-password="Mudar123" --language=pt_BR --currency=BRL --timezone=America/Sao_Paulo --use-rewrites=1 #--elasticsearch-host="elastic:9200"  --elasticsearch-port="9200" 

docker exec -it app php bin/magento maintenance:disable

docker exec -it app composer require "mundipagg/mundipagg-magento2-module" -vvv

docker exec -it app chown www-data.root -R .

docker exec -it app php bin/magento setup:upgrade

docker exec -it app php bin/magento setup:di:compile

docker exec -it app chown www-data.root -R .