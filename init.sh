#!/bin/bash

#========= nginx ===========
cp -f box_nginx.conf /etc/nginx/nginx.conf
nginx

#========= git ===========
git config --global user.email "demon@ya.ru"
git config --global user.name "demon"

#========= gunicorn ===========
gunicorn -b 0.0.0.0:8080 hello:app &

exit 0
