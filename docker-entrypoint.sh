#!/bin/bash
set -e

        if ! [ -e index.php ]; then
                echo >&2 "WordPress not found in $(pwd) - copying now..."
                cp -a /usr/src/wordpress/* .
                echo >&2 "Complete! WordPress has been successfully copied to $(pwd)"

        fi

chown www-data:www-data /var/www/html
touch /var/www/html/crossdomain.xml



exec "$@"

