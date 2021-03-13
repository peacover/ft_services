rc-status
touch /run/openrc/softlevel
rc-service nginx restart

# /etc/init.d/mariadb setup
# rc-service mariadb restart

# mysql -uroot -proot -e "CREATE DATABASE phpmyadmin"
# mysql -uroot -proot -e "CREATE DATABASE wordpress"
# mysql -uroot -proot -e "CREATE USER 'peacover'@'localhost' IDENTIFIED BY 'peacover'"
# mysql phpmyadmin < /phpmyadmin.sql
# mysql wordpress < /wordpress.sql
# mysql -uroot -proot -e "GRANT ALL PRIVILEGES ON *.* TO 'peacover'@'localhost'"
# mysql -e "FLUSH PRIVILEGES;"
# rc-service mariadb restart

rc-service php-fpm7 restart
tail -F /dev/null
# while true
# do 
# sleep 1;
# done