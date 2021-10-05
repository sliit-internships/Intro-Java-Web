drop database studentrecords;
create database if not exists studentrecords;
use studentrecords;
create table student(id int not null auto_increment, username varchar(45), password varchar(45), primary key(id));
show tables;
desc student;
