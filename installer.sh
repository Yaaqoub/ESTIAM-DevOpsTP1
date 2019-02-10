#!/usr/bin/env bash

service mysql start

mysql -u root <<MY_QUERY
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'root'
MY_QUERY

mysql -u root -proot <<MY_QUERY
CREATE DATABASE IF NOT EXISTS estiam_devops_tp1
MY_QUERY


node ./bin/www