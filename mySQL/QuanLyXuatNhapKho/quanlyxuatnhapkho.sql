create database QuanLyXuatNhapKho;

use quanlyxuatnhapkho;

create table PhieuXuat(
	SoPX int auto_increment primary key,
    NgayXuat date
);

create table ChiTietPhieuXuat(
	SoPX int not null,
    MaVT int not null,
    DGXuat double not null,
    SLXuat int not null,
    foreign key (SoPX) references PhieuXuat(SoPX),
    foreign key (MaVT) references VatTu(MaVT)
);

create table VatTu(
	MaVT int auto_increment primary key,
    TenVT varchar(50)
);

create table PhieuNhap(
	SoPN int auto_increment primary key,
    NgayNhap date not null
);

create table ChiTietPhieuNhap(
	SoPN int not null,
    MaVT int not null,
    DGNhap double not null,
    SLNhap int not null,
    foreign key (SoPN) references PhieuNhap(SoPN),
    foreign key (MaVT) references VatTu(MaVT)
);

create table DonDatHang(
	SoDH int auto_increment primary key,
    NgayDH date not null,
    MaNCC int not null
);

create table ChiTietDonDatHang(
	MaCTDH int auto_increment primary key,
	MaVT int not null,
    SoDH int not null,
    foreign key (MaVT) references VatTu(MaVT),
    foreign key (SoDH) references DonDatHang(SoDH)
);

create table NhaCC(
	MaNCC int not null auto_increment primary key,
    TenNCC varchar(50) not null unique,
    diachi varchar(100) not null
		
);

CREATE TABLE SoDienThoai(
	MaNCC INT NOT NULL,
    SoDienThoai VARCHAR(20) NOT NULL,
	FOREIGN KEY (MaNCC) REFERENCES NhaCC(MaNCC)
);
