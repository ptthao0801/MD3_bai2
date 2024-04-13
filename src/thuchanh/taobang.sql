create database QuanLyDiemThi;
use QuanLyDiemThi;

create table HocSinh(
                        MaHS varchar(20) PRIMARY KEY,
                        TenHS varchar(50),
                        NgaySinh Datetime,
                        Lop varchar(20),
                        GT varchar(20)
);

create table MonHoc(
                       MaMH varchar(20) PRIMARY KEY,
                       TenMH varchar(50),
                       MaGV varchar(20)
);

create table BangDiem(
                         MaHS varchar(20),
                         FOREIGN KEY (MaHS) REFERENCES HocSinh(MaHS),
                         MaMH varchar(50),
                         FOREIGN KEY (MaMH) REFERENCES MonHoc(MaMH),
                         DiemThi int,
                         NgayKT Datetime
);

create table GiaoVien(
                         MaGV varchar(20) PRIMARY KEY,
                         TenGV varchar(50),
                         SDT varchar(10)
);

ALTER TABLE MonHoc
    ADD FOREIGN KEY (MaGV) REFERENCES GiaoVien(MaGV)

