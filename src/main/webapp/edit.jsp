<%@ page import="java.sql.SQLException" %>
<%@ page import="MyPackage.ProductsDAO" %><%--
  Created by IntelliJ IDEA.
  User: User
  Date: 4/4/2023
  Time: 8:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
</head>
<body>
<%

    ProductsDAO productsDAO = new ProductsDAO();
    productsDAO.fillProducts();
    try {
        productsDAO.updateProduct(Integer.parseInt(request.getParameter("productId")),request.getParameter("productName"),
                Integer.parseInt(request.getParameter("productPrice")));
    } catch (SQLException e) {
        e.printStackTrace();
    }
    response.sendRedirect("products.jsp");
%>

</body>
</html>
