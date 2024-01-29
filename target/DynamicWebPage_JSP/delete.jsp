<%@ page import="MyPackage.ProductsDAO" %>
<%@ page import="java.sql.SQLException" %><%--
  Created by IntelliJ IDEA.
  User: User
  Date: 3/22/2023
  Time: 9:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
</head>
<body>
<%
    String deleteId = request.getParameter("deleteId");
    ProductsDAO productsDAO = new ProductsDAO();
    try {
        productsDAO.fillProducts();
    } catch (SQLException e) {
        e.printStackTrace();
    }
    int id = productsDAO.getProductsList().get(Integer.parseInt(deleteId)).getProductId();
    productsDAO.deleteProduct(id);
    response.sendRedirect("products.jsp");
    //sendRedirect("***.jsp"); verauxxum e mer tvac ej
%>
</body>
</html>
