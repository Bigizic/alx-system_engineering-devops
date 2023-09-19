-- MySQL syntax to create replica user and grant select privilage
-- to holberton_user to check that replica user was created

CREATE USER IF NOT EXISTS 'replica_user'@'%' IDENTIFIED BY '';
GRANT REPLICATION SLAVE ON *.* TO 'replica_user'@'%';
GRANT SELECT ON mysql.user TO 'holberton_user'@'localhost';
