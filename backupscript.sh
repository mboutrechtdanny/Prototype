#!/bin/bash
while true; do
    php artisan db:mongodump; php artisan db:mysqldump & sleep 300s;
done