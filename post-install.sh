#!/bin/bash
if [ ! -f "wp-config.php" ]; then

    cp vendor/jesgs/wordpress-dev/index.php index.php
    cp vendor/jesgs/wordpress-dev/.env.example .env.example
    cp vendor/jesgs/wordpress-dev/phpinfo.php phpinfo.php
    cp vendor/jesgs/wordpress-dev/wp-config.php wp-config.php

    cp -rf core/wp-content/themes/ content/themes/

    echo "Create Homestead environment..."
    ./vendor/bin/homestead make
fi