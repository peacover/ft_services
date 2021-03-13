rc-status
touch /run/openrc/softlevel
# rc-service nginx restart

/etc/init.d/mariadb setup
rc-service mariadb restart

mysql -uroot -proot -e "CREATE DATABASE phpmyadmin"
mysql -uroot -proot -e "CREATE DATABASE wordpress"
mysql -uroot -proot -e "CREATE USER 'peacover'@'%' IDENTIFIED BY 'peacover'"
my`sq`l -uroot -proot -e "GRANT ALL PRIVILEGES ON *.* TO 'peacover'@'%'"
mysql -e "FLUSH PRIVILEGES;"
mysql phpmyadmin < /phpmyadmin.sql
mysql wordpress < /wordpress.sql
rc-service mariadb restart

tail -F /dev/null
# bin/sh