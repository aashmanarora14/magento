#!/bin/bash
sudo chown -R www-data:www-data /var/www/html/magento/
sudo chmod -R 775 /var/www/html/magento/
php /var/www/html/magento/bin/magento cache:flush
php /var/www/html/magento/bin/magento setup:upgrade
php /var/www/html/magento/bin/magento setup:di:compile
php /var/www/html/magento/bin/magento setup:static-content:deploy -f
sudo service nginx restart
