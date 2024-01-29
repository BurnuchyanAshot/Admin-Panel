<%@ page import="MyPackage.ConnectionDB" %>
<%@ page import="MyPackage.Products" %>
<%@ page import="MyPackage.ProductsDAO" %>
<%@ page import="MyPackage.AdminDAO" %>
<html>
<body>
<a href="products.jsp">Products</a>
<%

//    ProductsDAO productsDAO = new ProductsDAO();
//    productsDAO.fillProducts();
//    out.println(productsDAO.printProducts());

    AdminDAO adminDAO = new AdminDAO();
    //adminDAO.fillAdmin();
    //adminDAO.deleteAdmin();
    //adminDAO.updateAdmin();
    //adminDAO.createAdmin();
    //out.println(adminDAO.printAdmin());
//    adminDAO.insertIntoAdmin();
//

%>

</body>
</html>
