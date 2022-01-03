#!/bin/bash


docker exec -it magento n98-magerun.phar config:set "web/secure/base_url" $1 ;
docker exec -it magento n98-magerun.phar config:set "web/unsecure/base_url" $1 ;
