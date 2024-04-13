create database QuanLyBanHang;
use QuanLyBanHang;

create table Customer(
                         cID int primary key ,
                         cName varchar(200),
                         cAge int
);

create table Orders(
                      oID int primary key ,
                      cID int,
                      oDate DATETIME,
                      oTotalPrice double,
                      foreign key (cID) references Customer(cID)
);

create table Product(
                        pID int primary key ,
                        pName varchar(200),
                        pPrice double
);

create table OrderDetail(
                            oID int,
                            pID int,
                            foreign key (oID) references Orders(oID),
                            foreign key (pID) references Product(pID)
);
