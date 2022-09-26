use QuanLyBanHangDatabaseMau;

-- Câu 4 In ra danh sách các sản phẩm (MASP,TENSP) do “Trung Quốc” sản xuất có giá từ 20.000 đến 30.000
SELECT MASP, TENSP
FROM SANPHAM 
WHERE NUOCSX IN (SELECT distinct NUOCSX
FROM SANPHAM
WHERE NUOCSX = "Viet Nam" OR NUOCSX = "Trung Quoc")AND(Gia >= 2000 AND Gia <= 30000);

-- 8. In ra danh sách các khách hàng (MAKH, HOTEN) đã mua hàng trong ngày 1/1/2007.
SELECT kh.MAKH, HOTEN, SANPHAM.TENSP, SANPHAM.GIA
FROM KHACHHANG kh
JOIN HOADON hd ON kh.MAKH = hd.MAKH
JOIN CTHD ON CTHD.SOHD = hd.SOHOADON
JOIN SANPHAM SP ON SP.MASP = CTHD.MASP
WHERE hd.NGAYMUAHANG = "2007-01-01";

-- 9. In ra danh sách các sản phẩm (MASP,TENSP) được khách hàng có tên “Nguyễn Văn A” mua trong Tháng 10/2006.
SELECT s.MASP, s.TENSP, hd.NGAYMUAHANG
FROM SANPHAM s
JOIN CTHD ct ON s.MASP = ct.MASP
JOIN HOADON hd ON hd.SoHoaDon = ct.SoHD
JOIN KHACHHANG kh ON kh.MaKH  = hd.MaKH
WHERE kh.HOTEN = 'Nguyen Van A' AND hd.NgayMuaHang like '2006-10-%';

-- 20. Trị giá trung bình của tất cả các hóa đơn được bán ra trong năm 2006 là bao nhiêu?
SELECT round(AVG(TRIGIA))
FROM HOADON
WHERE NgayMuaHang like '2006-%';

-- 26. In ra danh sách các sản phẩm (MASP, TENSP) do “Trung Quốc” sản xuất có giá bằng 1 trong 3 mức Giá thấp nhất (của tất cả các sản phẩm).
SELECT MASP,TENSP
FROM SAN PHAM
WHERE GIA IN (SELECT GIA
FROM SANPHAM
WHERE NUOCSX = "Trung Quoc" 
ORDER BY GIA
LIMIT 0,3);

select sp.MaSP, sp.TenSP, SP.GIA
from sanpham sp join (select * from sanpham order by Gia limit 0,3) as spmin on sp.Gia = spmin.Gia
where sp.NuocSX = 'Trung Quoc';
 

