-- my sql syntax to create the user and grant permission
CREATE USER IF NOT EXISTS 'holberton_user'@'localhost' IDENTIFIED BY '';
GRANT REPLICATION CLIENT ON *.* TO 'holberton_user'@'localhost';
