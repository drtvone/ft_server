echo "start mysql;"
service mysql start
echo "start php7.3-fpm;"
service php7.3-fpm start
# Config a wordpress database
echo "CREATE DATABASE wordpress;"| mysql -u root --skip-password
echo "CREATE USER 'rturnip'@'localhost' IDENTIFIED BY '1613';"| mysql -u root --skip-password
echo "GRANT ALL PRIVILEGES ON wordpress.* TO 'rturnip'@'localhost' WITH GRANT OPTION;"| mysql -u root --skip-password
echo "FLUSH PRIVILEGES;"| mysql -u root --skip-password
echo "update mysql.user set plugin='' where user LIKE 'rturnip%';"| mysql -u root --skip-password
echo "start nginx;"
service nginx start
bash