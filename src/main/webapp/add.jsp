<%@ page import="MyPackage.ProductsDAO" %>
<%@ page import="java.sql.SQLException" %><%--
  Created by IntelliJ IDEA.
  User: User
  Date: 4/1/2023
  Time: 5:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add</title>
</head>
<body>
<%
    ProductsDAO productsDAO = new ProductsDAO();
    try {
        productsDAO.insertIntoProducts(request.getParameter("productName"),Integer.parseInt(request.getParameter("productPrice")));
    } catch (SQLException e) {
        e.printStackTrace();
    }
    response.sendRedirect("products.jsp");
    

%>

</body>
</html>
