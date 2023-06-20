CREATE DATABASE CMS;

USE CMS;

CREATE TABLE GOODS (
	GOODS_CD		BIGINT PRIMARY KEY AUTO_INCREMENT,
	GOODS_NM		VARCHAR(500),
    PRICE			INT,
    DISCOUNT_RATE 	VARCHAR(100),
    STOCK 			INT,
    SORT 			VARCHAR(500),
    PART 			VARCHAR(500),
    POINT 			VARCHAR(100),
    CONTENT 		VARCHAR(2000),
    PROFILE			VARCHAR(200),
    ENROLL_DT		TIMESTAMP,
	DELIVERY_PRICE	INT
);

CREATE TABLE MEMBER (
	MEMBER_ID		VARCHAR(30) PRIMARY KEY,
    MEMBER_NM		VARCHAR(50),
    PASSWD			VARCHAR(200),
    SEX				CHAR(1),
    BIRTH_DT 		CHAR(10),
    HP				VARCHAR(13),
    SMSSTS_YN		CHAR(1),
    EMAIL			VARCHAR(50),
    EMAILSTS_YN		CHAR(1),
    ZIPCODE			VARCHAR(10),
    ROAD_ADDRESS	VARCHAR(500),
    JIBUN_ADDRESS	VARCHAR(500),
    NAMUJI_ADDRESS	VARCHAR(500),
    POINT			INT,
    JOIN_DT			TIMESTAMP
);

CREATE TABLE ADMIN (
	ADMIN_ID 	VARCHAR(30) PRIMARY KEY,
    PASSWD 		VARCHAR(200),
    JOIN_DT		TIMESTAMP
);

INSERT INTO `ADMIN` VALUES ('cmsadmin' , 'cMMSadMINp@ss' , NOW());

CREATE TABLE `ORDER` (
	ORDER_CD			BIGINT PRIMARY KEY AUTO_INCREMENT,
    MEMBER_ID			VARCHAR(30),
    GOODS_CD			INT,
    ORDER_GOODS_QTY		INT,
    TOTAL_PAY			INT,
    ORDERER_NM			VARCHAR(50),
    ORDERER_HP			VARCHAR(13),
    RECEIVER_NM			VARCHAR(50),
    RECEIVER_HP			VARCHAR(13),
    ZIPCODE				VARCHAR(10),
    ROAD_ADDRESS		VARCHAR(200),
    JIBUN_ADDRESS		VARCHAR(200),
    NAMUJI_ADDRESS		VARCHAR(200),
    DELIVERY_METHOD		VARCHAR(40),
    DELIVERY_MESSAGE	VARCHAR(300),
    DELIVERY_STATUS		VARCHAR(30),
    PAY_METHOD			VARCHAR(100),
    PAY_ORDERER_HP		VARCHAR(13),
    CARD_COMPANY_HP		VARCHAR(50),
    CARD_PAY_MONTH		VARCHAR(20),
    PAY_ORDER_TME		TIMESTAMP
);

CREATE TABLE CART (
	CART_CD 		BIGINT PRIMARY KEY AUTO_INCREMENT,
    MEMBER_ID		VARCHAR(30),
	GOODS_CD		INT,
    CART_GOODS_QTY	INT,
    ENROLL_DY		TIMESTAMP
);

CREATE TABLE CONTACT(
	CONTACT_CD	BIGINT PRIMARY KEY AUTO_INCREMENT,
    NAME		VARCHAR(50),
    EMAIL		VARCHAR(50),
    SUBJECT		VARCHAR(300),
    CONTENT		VARCHAR(3000),
    REG_DT		TIMESTAMP
);

CREATE TABLE BOARD(
	BOARD_ID	BIGINT PRIMARY KEY AUTO_INCREMENT,
	WRITER		VARCHAR(50),
    PASSWD		VARCHAR(50),
    SUBJECT		VARCHAR(300),
    CONTENT		VARCHAR(3000),
    READ_CNT	INT,
    ENROLL_DT	TIMESTAMP
);

CREATE TABLE REPLY(
	REPLY_ID	BIGINT PRIMARY KEY AUTO_INCREMENT,
    WRITER		VARCHAR(50),
    CONTENT		VARCHAR(1000),
    BOARD_ID	BIGINT,
    ENROLL_DT	TIMESTAMP
);