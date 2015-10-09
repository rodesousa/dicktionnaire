#! /bin/bash
chmod +x dick.py
mysql -u root -p$MYSQL_ROOT_PASSWORD -padmin -e 'create database dicktionnaire'
mysql -u root -p$MYSQL_ROOT_PASSWORD -padmin dicktionnaire < db.sql 
