CREATE USER 'holberton_user'@'localhost' IDENTIFIED BY '';
GRANT REPLICATION CLIENT ON *.* TO 'holberton_user'@'localhost';
FLUSH PRIVILEGES;
EXIT;
