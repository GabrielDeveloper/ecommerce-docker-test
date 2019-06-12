#!/usr/bin/env bash

docker exec -it app composer config -g repo.packagist composer https://packagist.org

docker exec -it app composer require mundipagg/mundipagg-magento2-module -vvv

docker exec -it app php bin/magento setup:upgrade

docker exec -it app php bin/magento setup:di:compile

docker exec -it app chown www-data.root -R .