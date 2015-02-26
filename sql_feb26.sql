CREATE DATABASE DVD_rental;

USE DVD_rental;

CREATE table DVD_Title(
catalogNum int(10) NOT_NULL AUTO_INCREMENT,
title varchar(100) NOT_NULL,
category varchar(20) NOT_NULL,
rentalFee float(20) NOT_NULL,
director varchar(50) NOT_NULL,
PRIMARY_KEY(catalogNum)
)ENGINE=INNODB;

CREATE table Actor(
actorID int(10) NOT_NULL AUTO_INCREMENT,
firstName varchar(30) NOT_NULL,
lastName varchar(30) NOT_NUll,
PRIMARY_KEY(actorID)
)ENGINE=INNODB;

CREATE table AppearsIn(
FOREIGN_KEY(catalogNum) REFERNCES DVD_Title(catalogNum),
FOREIGN_KEY(actorID) REFRENCES Actor(actorID)
)ENGINE=INNODB;

INSERT INTO DVD_Title (catalogNum, title, category, rentalFee, director) 
VALUES ('1001','The Muppet Movie','Comedy', 1.99, 'James Frawley'), 
('1002','Robin Hood: Men in Tights','Comedy', 1.50, 'Mel Brooks');

INSERT INTO Actor (actorId, firstName, lastName) 
VALUES (101, 'Mel', 'Brooks'), (102, 'Carey', 'Elwes'), 
(103, 'Richard', 'Lewis'), (104, 'Matthew', 'Broderick'), 
(105, 'Jim', 'Henson'), (106, 'Frank', 'Oz');


INSERT INTO AppearsIn 
VALUES ('1002','101'), 
('1002','102'), 
('1002','103'), 
('1001','101'), 
('1001','105'), 
('1001','106');

