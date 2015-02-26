CREATE database DVD_rental;

USE database DVD_rental;

CREATE table DVD_Title(
catalogNum int(10) NOT_NULL AUTO_INCREMENT,
title varchar(100) NOT_NULL,
category varchar(20) NOT_NULL,
rentalFee float(20) NOT_NULL,
director varchar(50) NOT_NULL,
PRIMARY_KEY(catalogNum)
);

CREATE table Actor(
actorID int(10) NOT_NULL AUTO_INCREMENT,
firstName varchar(30) NOT_NULL,
lastName varchar(30) NOT_NUll,
PRIMARY_KEY(actorID)
);

CREATE table AppearsIn(
FOREIGN_KEY(catalogNum) REFERNCES DVD_Title(catalogNum),
FOREIGN_KEY(actorID) REFRENCES Actor(actorID)
);
