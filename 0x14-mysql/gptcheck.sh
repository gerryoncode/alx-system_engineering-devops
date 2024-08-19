#!/bin/bash

echo "Checking MySQL version on web-01"
ssh ubuntu@34.207.227.40 "mysql --version"

echo "Checking MySQL version on web-02"
ssh ubuntu@52.23.212.100 "mysql --version"

echo "Checking MySQL service status on web-01"
ssh ubuntu@34.207.227.40 "sudo systemctl status mysql | grep 'Active:'"

echo "Checking MySQL service status on web-02"
ssh ubuntu@52.23.212.100 "sudo systemctl status mysql | grep 'Active:'"

echo "Checking MySQL logs on web-01"
ssh ubuntu@34.207.227.40 "sudo tail -n 20 /var/log/mysql/error.log"

echo "Checking MySQL logs on web-02"
ssh ubuntu@52.23.212.100 "sudo tail -n 20 /var/log/mysql/error.log"

echo "Testing MySQL connection on web-01"
ssh ubuntu@34.207.227.40 "mysql -u root -p -e 'SELECT VERSION();'"

echo "Testing MySQL connection on web-02"
ssh ubuntu@52.23.212.100 "mysql -u root -p -e 'SELECT VERSION();'"

