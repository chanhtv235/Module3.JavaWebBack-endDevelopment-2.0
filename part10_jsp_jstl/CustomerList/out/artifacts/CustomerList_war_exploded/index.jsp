<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="model.Customer" %>
<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 7/9/2020
  Time: 4:36 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <%
    List<Customer> listOfCustomers = new ArrayList<Customer>();
    Customer customer = new Customer("Bill Gates", "1988-08-20", "Hà Nội", "WEB-INF/img/hinh.jpg");
    listOfCustomers.add(customer);
    customer = new Customer("Nguyen Văn A", "1988-08-20", "Hà Nội",  "img/hinh.jpg");
    listOfCustomers.add(customer);
    customer = new Customer("NGuyễn Văn B", "1988-08-20", "Hà Nội",  "img/hinh.jpg");
    listOfCustomers.add(customer);
    customer = new Customer("Nguyễn Văn C", "1988-08-20", "Hà Nội",  "img/hinh.jpg");
    listOfCustomers.add(customer);
    customer = new Customer("NGuyễn VĂn D", "1988-08-20", "Hà Nội",  "img/hinh.jpg");
    listOfCustomers.add(customer);

//    pageContext.setAttribute("listCustomer", listOfCustomers);
  %>
  <h2>Danh sách khách hàng</h2>
  <table>
    <thead>
    <tr>
      <th>Tên</th>
      <th>Ngày sinh</th>
      <th>Địa chỉ</th>
      <th>Ảnh</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="cus" items="${listCustomer}">
      <tr class="border_bottom">
        <td><c:out value="${cus.getName()}"></c:out></td>
        <td><c:out value="${cus.getBirthday()}"></c:out></td>
        <td><c:out value="${cus.getAddress()}"></c:out></td>
        <td><img src="${cus.getImageLink()}" width="50px" height="50px"></td>
      </tr>
    </c:forEach>
    </tbody>
  </table>
  </body>
</html>
