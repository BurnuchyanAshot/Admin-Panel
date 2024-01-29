package MyPackage;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class AdminDAO {
    public List<Admin> adminList = new ArrayList<>();
    private ConnectionDB connectionDB = new ConnectionDB();
    Statement statement = connectionDB.connect().createStatement();
    ResultSet resultSet = null;

    public AdminDAO() throws SQLException {
    }

    public void fillAdmin() throws SQLException {
        resultSet = statement.executeQuery("SELECT * FROM admin");
        while(resultSet.next()){
            Admin admin = new Admin();
            admin.setAdminId(resultSet.getInt(1));
            admin.setLogin(resultSet.getString(2));
            admin.setPassword(resultSet.getString(3));
            adminList.add(admin);
        }
    }
    public String printAdmin(){
        String str = "";
        for (int i = 0; i < adminList.size(); i++) {
            str+= adminList.get(i).getAdminId() + " " + adminList.get(i).getLogin() + " "
                    +adminList.get(i).getPassword();
            str += "<br>";
        }
        return  str;
    }
    public void deleteAdmin() throws SQLException {
        statement.executeUpdate("DELETE FROM admin WHERE adminId = ");
    }
    public void updateAdmin() throws SQLException{
        statement.executeUpdate("UPDATE admin SET login = 'Emmanuel' WHERE adminId = 2");
    }
    public void createAdmin() throws SQLException {
        statement.executeUpdate("CREATE TABLE if not exists orders5 (orderId INT, name VARCHAR(20),orderQuantity INT)");
    }
    public void insertIntoAdmin() throws SQLException{
        statement.executeUpdate("insert into orders5 (name,orderQuantity) values ('herustacuyc',5)");

    }

}








