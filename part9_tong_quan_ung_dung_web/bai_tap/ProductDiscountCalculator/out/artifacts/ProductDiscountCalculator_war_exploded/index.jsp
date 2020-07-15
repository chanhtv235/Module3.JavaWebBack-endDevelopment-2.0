<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 7/7/2020
  Time: 4:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Product</title>
  <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<h2>Product</h2>
<form method="post" action="/ProductDiscountCalculator_war_exploded/product">
  <label>Product Description: </label><br/>
  <input type="text" name="des"  value=""/><br/>
  <label>List Price: </label><br/>
  <input type="text" name="price"  value="0"/><br/>
  <label>Discount Percent: </label><br/>
  <input type="text" name="discount" value="0"/><br/>
  <input type = "submit" id = "submit" value = "Calculate Discount"/>
</form>
</body>
</html>