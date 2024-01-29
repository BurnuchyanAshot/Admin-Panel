package MyPackage;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ProductsDAO {
    public List<Products> productsList = new ArrayList<>();
    private ConnectionDB connectionDB = new ConnectionDB();
    Statement statement = connectionDB.connect().createStatement();
    ResultSet resultSet = null;

    public ProductsDAO() throws SQLException {
    }

    public void fillProducts() throws SQLException {
        String query = "SELECT * FROM products";
        resultSet = statement.executeQuery(query);
        while (resultSet.next()){
            Products products = new Products();
            products.setProductId(resultSet.getInt(1));
            products.setProductName(resultSet.getString(2));
            products.setProductPrice((resultSet.getInt(3)));
            productsList.add(products);
        }
    }

    public List<Products> getProductsList() {
        return productsList;
    }

    public void insertIntoProducts(String productName, int productPrice) throws SQLException{
        statement.executeUpdate("insert into products values (null"+",'"+productName+"',"+productPrice+")");
    }

    public void deleteProduct(int id) throws SQLException {
        statement.executeUpdate("DELETE FROM products WHERE productId = "+ id +";");

    }
    public void updateProduct(int productId, String productName, int productPrice) throws SQLException{
        statement.executeUpdate("update products set productName ='"+productName+"', productPrice ='"+productPrice+"' where productId = '"+productId+"' ");
    }


    public String printProducts(){
        String str = "";
        for (int i = 0; i < productsList.size(); i++) {
            str+= productsList.get(i).getProductId() + " " + productsList.get(i).getProductName() + " "
                    +productsList.get(i).getProductPrice();
            str += "<br>";
        }
        return  str;
    }

}











