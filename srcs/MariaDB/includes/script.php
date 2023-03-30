echo "CREATE DATABASE IF NOT EXISTS MYDB ;" > db1.sql
echo "CREATE USER IF NOT EXISTS test@'%' IDENTIFIED BY test ;" >> db1.sql
echo "GRANT ALL PRIVILEGES ON $db_name.* TO test@'%' ;" >> db1.sql
echo "ALTER USER 'root'@'localhost' IDENTIFIED BY '12345' ;" >> db1.sql
echo "FLUSH PRIVILEGES;" >> db1.sql