<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html >
<head>
    <style>
        body {
            display: flex;
            justify-content: center;

        }
        table{
            border: blue solid 1px;
            margin-top: 30px;
            text-align: center;
            border-collapse:collapse;
        }
        thead tr {
            border: blue solid 1px;
            font-size: 20px;
            padding-bottom: 10px;
        }
        tr {
            border: blue solid 1px;
        }
        .thead_th1 {
            width: 200px;
            text-align: center;
        }
        td {
            border: blue solid 1px;
            width: 100px;
        }
        th{
            text-align: center;
            justify-content: center;
        }
        img {
            width: 100px;
            height: 100px;
        }
    </style>
</head>
<body>

<table>
    <thead>
    <tr>
        <th colspan="4">Danh sách khách hàng</th>
    </tr>
    <tr>
        <th class="thead_th1">Tên</th>
        <th>Ngày sinh</th>
        <th>Địa chỉ</th>
        <th>Ảnh</th>
    </tr>
    </thead>
    <tbody>

    <c:forEach items="${customers}" var="customer">
        <tr>
            <td class="thead_th1">${customer.name}</td>
            <td>${customer.birthday}</td>
            <td>${customer.address}</td>
            <td><img src="${customer.img}" alt=""></td>
        </tr>
    </c:forEach>

    </tbody>
</table>
</body>
</html>