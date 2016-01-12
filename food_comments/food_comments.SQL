--DROP DATABASE IF EXISTS HRM;
--CREATE DATABASE HRM;
--USE HRM;
--CREATE TABLE T_USER(
--	ID INT(11) PRIMARY KEY AUTO_INCREMENT,
--	USERNAME VARCHAR(255) UNIQUE NOT NULL,
--	PASSWORD VARCHAR(255) NOT NULL,
--	NAME VARCHAR(255) NOT NULL,
--	AGE INT(3) NOT NULL,
--	GENDAR BIT(1) NOT NULL,
--	TEL VARCHAR(255) NOT NULL,
--	EMAIL VARCHAR(255) NOT NULL,
--	QQ VARCHAR(255) NOT NULL,
--	ENTRYTIME VARCHAR(255) NOT NULL
--);
INSERT INTO f_user(useremail,userpass,nick,city) VALUES('222@qq.com','123456','rider_1','重庆');

INSERT INTO f_merchant(name,style,address,user_id) VALUES('nidon','meishi','cq',1);
INSERT INTO f_merchant(name,style,address,user_id) VALUES('budong','meishi','cq',1);
INSERT INTO f_commentary(content,user_id,merchant_id) VALUES('zhenbucuo',1,2);

INSERT INTO f_business(merchant_id) VALUES(1) where id=1;
--SELECT * FROM T_USER;
