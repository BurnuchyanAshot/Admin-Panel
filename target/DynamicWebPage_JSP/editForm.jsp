<%@ page import="MyPackage.ProductsDAO" %>
<%@ page import="MyPackage.Products" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: User
  Date: 4/4/2023
  Time: 8:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit</title>
    <link rel="stylesheet" href="css/editForm.css">
</head>
<body>
<%
    int editId = Integer.parseInt(request.getParameter("editId"));
    ProductsDAO productsDAO = new ProductsDAO();
    productsDAO.fillProducts();
    List<Products>allProducts =  productsDAO.getProductsList();
%>


<div class="edit-box">
    <form action="edit.jsp" >
        <div id="prod-id">
            <input type="text" readonly name="productId" value="<%out.print(allProducts.get(editId).getProductId());%>">
            <label>Product Id</label>
        </div>

        <div class="prod-name">
            <input type="text" name="productName" value="<%out.print(allProducts.get(editId).getProductName());%>">
            <label>Product Name</label>
        </div>

        <div class="prod-name">
            <input type="text" name="productPrice" value="<%out.print(allProducts.get(editId).getProductPrice());%>">
            <label>Product Price</label>
        </div>

        <div class="btnSubmit">
            <input type="submit" name="name" value="Edit Product">
        </div>
    </form>
</div>
</body>
</html>











