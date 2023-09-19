# MySQL

## Install MySQL on both servers READ <a target="_blank" href="./install_mysql.md"> ALSO </a>
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
