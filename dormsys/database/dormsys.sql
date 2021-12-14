create database dormsys;
drop table if exists 'user';
create table 'user'(
    'user_id' varchar(255) not null,
    'user_name' varchar(50) not null,
    'user_pw' varchar(255) not null,
    PRIMARY KEY ('user_id')
)ENGINE=InnoDB DeFAULT CHARSET=utf8; 

drop table if exists 'admin';

drop table if exists 'emp';
drop table if exists 'stu';
drop table if exists 'dorm';
drop table if exists 'bldg';
drop table if exists 'rec';
drop table if exists 'rec_stu';
drop table if exists 'rec_per';

