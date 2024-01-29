package MyPackage;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionDB {

    public Connection connect() {
        Connection conn = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (Exception e) {
            System.out.println("Error!!!!!!" + e);
        }
        try {
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/store?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC",
                    "root", "admin");

            System.out.println("Connected!");
        } catch (SQLException e) {
            System.out.println("Error!!!!!!" + e);
        }
        return conn;
    }
}
