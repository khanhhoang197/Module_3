CREATE DATABASE QuanLyDiemThi;

USE QuanLyDiemThi;

CREATE TABLE HocSinh(
	MaHS VARCHAR(20) not null primary key,
    TenHs varchar(50) not null,
    NgaySinh date not null,
    Lop varchar(10),
    GT boolean
);

CREATE TABLE GiaoVien(
	MaGV VARCHAR(20) not null primary key,
    TenGV varchar(50) not null,
    SDT VARCHAR(10)
);

CREATE TABLE MonHoc(
	MaMH VARCHAR(20) not null primary key,
    TenMH varchar(20) not null,
    MaGV varchar(10),
	FOREIGN KEY (MaGV) REFERENCES GiaoVien(MaGV)
);

CREATE TABLE BangDiem(
	MaHS VARCHAR(20) not null,
    MaMH VARCHAR(20) not null,
    DiemThi int,
    NgayKT date,
    PRIMARY KEY(MaHS,MaMH),
    FOREIGN KEY (MaHS) REFERENCES HocSinh(MaHS),
    FOREIGN KEY (MaMH) REFERENCES MonHoc(MaMH)
);


