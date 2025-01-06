#!/bin/bash
sudo service nginx stop
rm -rf /var/www/html/magento/var/cache/*
rm -rf /var/www/html/magento/var/log/*
rm -rf /var/www/html/magento/generated/*
sudo service nginx start
