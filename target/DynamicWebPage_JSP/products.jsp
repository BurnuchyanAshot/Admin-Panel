<%@ page import="MyPackage.ProductsDAO" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="MyPackage.Products" %>
<%@ page import="java.util.List" %>
<%@ page import="MyPackage.AdminDAO" %><%--
  Created by IntelliJ IDEA.
  User: User
  Date: 3/18/2023
  Time: 10:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="css/products.css">
</head>
<body>
    <%

        ProductsDAO productsDAO = new ProductsDAO();
        try {
            productsDAO.fillProducts();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    %>
    <div id="header">
        <div class="id">№</div>
        <div class="prodname">Product Name</div>
        <div class="info">Price</div>
        <div class="info">Image</div>
        <div class="info">Edit</div>
        <div class="info">Delete</div>
    </div>
    <div id="container">

        <%
            List<Products> allProducts = productsDAO.getProductsList();
            for (int i = 0; i < allProducts.size(); i++) {

        %>
        <div class="products">
            <div class="row">
                <div class="id"> <%=allProducts.get(i).getProductId()%></div>
                <div class="prodname"> <%=allProducts.get(i).getProductName()%></div>
                <div class="info"><%=allProducts.get(i).getProductPrice()%></div>
                <div class="info"></div>
                <div class="info"><div class="btn"><a href="editForm.jsp?editId=<%=i%>">Edit</a></div></div>
                <div class="info"><div class="btn"><a href="delete.jsp?deleteId=<%=i%>">Delete</a></div></div>
<%--               ? nshanakum e vor baci href direck aneluc naxaqtesum enq popoxakan ?popokhakaniAnun=  =i--%>
            </div>
        </div>
    </div>

<%--        <td>--%>
<%--            <IMG src="images/<%=allProducts.get(i).getImage()%>">--%>
<%--        </td>--%>

<%--        <td>--%>
<%--            <a href="editForm.jsp?editId=<%=i%>" class="btn btn-info" role="button">Edit</a>--%>
<%--        </td>--%>

    <% } %>
<div class="btnAdd">
    <a href="addForm.jsp">Add</a>
</div>
</body>
</html>
