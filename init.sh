#!/bin/sh
sudo ln -s /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo unlink /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
sudo ln -s /home/box/web/etc/gunicorn.conf /etc/gunicorn/test
sudo /etc/init.d/gunicorn restart
sudo /etc/init.d/mysql start
