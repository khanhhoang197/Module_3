create database QuanLyBanHang;

use QuanLyBanHang;

create table customer
(
	cID Varchar(10) not null primary key,
    cName varchar(50) not null,
    cAge int not null
);

create table Orders
(
	oID varchar(10) 	not null primary key,
    cID varchar(10) 	not null,
    oDate date 			not null,
    oTotalPrice double, 
    foreign key (cID) references customer(cID)
);

create table Product
(
	pID varchar(10) 	not null primary key,
    pName varchar(20) 	not null,
    pPrice double 		not null
);

create table OrderDetail
(
	oID varchar(10) not null,
    pID varchar(10) not null,
    odQTY int 		not null,
    primary key (oID,pID),
    foreign key (oID) references Orders(oID),
    foreign key (pID) references Product(pID)
);