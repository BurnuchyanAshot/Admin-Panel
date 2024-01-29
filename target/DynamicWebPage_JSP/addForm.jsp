<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 4/1/2023
  Time: 6:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="css/addForm.css">
</head>
<body>
<div>
    <div class="add-box">

        <form action="add.jsp">
            <div class="prod-name">
                <input required="required" type="text" name="productName">
                <label>Product Name</label>
            </div>

            <div class="prod-name">
                <input required="required" type="text" name="productPrice">
                <label>Product Price</label>
            </div>

            <div class="btnSubmit">
                <input type="submit" name="name" value="Add product">
            </div>
        </form>
    </div>


</div>
</body>
</html>
