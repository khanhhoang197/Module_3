<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Product Discount Calculator</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
    <h2>Product Discount Calculator</h2>
    <form action="/display-discount" method="post">
        <label>Product Description: </label><br/>
        <input type="text" name="description"/><br/>
        <label>List Price: </label><br/>
        <input type="number" name="price"/> $<br/>
        <label>Discount Percent: </label><br/>
        <input type="number" name="percent" value="0"/> (%)<br/>
        <input type = "submit" id = "submit" value = "Calculate Discount"/>
    </form>
</body>
</html>