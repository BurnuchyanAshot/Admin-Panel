package MyPackage;

public class Admin {
    private int adminId;
    private String login;
    private String password;

    public Admin() {
    }

    public Admin(int adminId, String login, String password) {
        this.adminId = adminId;
        this.login = login;
        this.password = password;
    }

    public int getAdminId() {
        return adminId;
    }

    public void setAdminId(int adminId) {
        this.adminId = adminId;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
