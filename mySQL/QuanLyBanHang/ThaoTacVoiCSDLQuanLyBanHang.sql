use quanlybanhang;

insert into customer(cID,cName,cAge) values
(1, 'Minh Quan', 10),
(2, 'Ngoc Oanh',20),
(3, 'Hong Ha', 50);

insert into orders(oID, cID, oDate, oTotalPrice) values 
(1, 1, '2006-03-2',null),
(2, 2,' 2006-03-23', null),
(3, 1, '2006-03-16',null);

insert into product(pID, pName, pPrice) values
(1, 'May Giat', 3),
(2, 'Tu lanh', 5),
(3, 'Dieu Hoa', 7),
(4, 'Quat', 1),
(5, 'Bep Dien', 2);

insert into orderdetail(oID, pID, odQTY) values
(1, 1, 3),
(1, 3, 7),
(1, 4, 2),
(2, 1, 1),
(3, 1, 8),
(2, 5, 4),
(2, 3, 3);

-- Hiển thị các thông tin  gồm oID, oDate, oPrice của tất cả các hóa đơn trong bảng Order
select oID, oDate, oTotalPrice from orders;

-- Hiển thị danh sách các khách hàng đã mua hàng, và danh sách sản phẩm được mua bởi các khách
select * from customer c
inner join orders o on c.cID = o.cID   
inner join orderdetail od on o.oID = od.oID
inner join product p on p.pID = od.pID;


-- Hiển thị tên những khách hàng không mua bất kỳ một sản phẩm nào
SELECT c.cID as "ID", 
c.cName as "Name", 
c.cAge  as "Age"
FROM customer c 
WHERE c.cID NOT IN
(SELECT c.cID FROM (customer 
INNER JOIN orders o 
ON c.cID = o.cID));

-- Hiển thị mã hóa đơn, ngày bán và giá tiền của từng hóa đơn 
-- (giá một hóa đơn được tính bằng tổng giá bán của từng loại mặt hàng xuất hiện trong hóa đơn. 
-- Giá bán của từng loại được tính = odQTY*pPrice)
SELECT
o.oID as "Order ID",
o.oDate as "Date",
sum(od.odQTY * p.pPrice) as "Total"
FROM ((orderdetail od inner join product p on od.pID = p.pID)
inner join orders o on od.oID = o.oID)
GROUP BY o.oID;