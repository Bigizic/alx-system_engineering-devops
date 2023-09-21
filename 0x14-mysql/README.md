# MySQL

## Install MySQL on both servers READ <a target="blank" href="./install_mysql.md"> ALSO </a>
* MySQL distribution must be 5.7.x

## Create a MySQL user on both server 
* name = `holberton_user`
* host name = localhost
* make sure the user has the permission to check the primary/replica status of the database


## In order to set replication, you'll need to have a database with at least one table and one row in primary MySQL server(first server) to replicate from

* create a database
* create a table within the database and add at least one entry to it
* make sure the user created has `SELECT` permissions on table


## Before starting with primary-replica synchronization, on primary MySQL server create a new user for the replica server

* the name of the user should be `replica_user`, with host name set to `%` and any password
* `replica_user` must have appropriate permissions to replicate the primary MySQL server
* `holberton_user` will need `SELECT` privilages on the `mysql.user` table in order to check that `replica_user` was created with the correct permissions.


## Setup a Primary-Replica infrastructure using MySQL
Having a replica member on for your MySQL database has 2 advantages:

* Redundancy: If you lose one of the database servers, you will still have another working one and a copy of your data
* Load distribution: You can split the read operations between the 2 servers, reducing the load on the primary member and improving query response speed

MASTER TERMINAL/PRIMARY:

    isaac@web-01:~$ mysql -uholberton_user -p
    Enter password:
    Welcome to the MySQL monitor.  Commands end with ; or \g.
    Your MySQL connection id is 4
    Server version: 5.7.42-log MySQL Community Server (GPL)
    
    Copyright (c) 2000, 2023, Oracle and/or its affiliates.
    
    Oracle is a registered trademark of Oracle Corporation and/or its
    affiliates. Other names may be trademarks of their respective
    owners.
    
    Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.
    
    mysql> show master status\G
    *************************** 1. row ***************************
             File: mysql-bin.000006
         Position: 154
     Binlog_Do_DB: tyrell_corp
     Binlog_Ignore_DB: mysql
    Executed_Gtid_Set:
    1 row in set (0.00 sec)

    mysql> quit
    Bye


TERMINAL TWO/SLAVE:

    mysql> SHOW SLAVE STATUS\G;
    *************************** 1. row ***************************
               Slave_IO_State: Waiting for master to send event
                  Master_Host: 100.26.155.102
                  Master_User: replica_user
                  Master_Port: 3306
                Connect_Retry: 60
              Master_Log_File: mysql-bin.000006
          Read_Master_Log_Pos: 154
               Relay_Log_File: mysql-relay-bin.000002
                Relay_Log_Pos: 320
        Relay_Master_Log_File: mysql-bin.000006
             Slave_IO_Running: Yes
            Slave_SQL_Running: Yes


## MySQL backup:

### 5-mysql_backup:

Write a Bash script that generates a MySQL dump and creates a compressed archive out of it.

Requirements:

* The MySQL dump must contain all your MySQL databases
* The MySQL dump must be named backup.sql
* The MySQL dump file has to be compressed to a tar.gz archive
* This archive must have the following name format: day-month-year.tar.gz
* The user to connect to the MySQL database must be root
* The Bash script accepts one argument that is the password used to connect to the MySQL database
