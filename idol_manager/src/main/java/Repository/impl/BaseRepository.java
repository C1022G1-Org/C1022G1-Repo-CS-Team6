package Repository.impl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class BaseRepository {
    private static String jdbcURL = "jdbc:mysql://localhost:3306/idol_manager";
    private static String jdbcUsername = "root";
    private static String jdbcPassword = "123456";
    private static Connection connection;

    public static Connection getConnection() {
//        if (connection == null) {   Máy Đạt bị lỗi luồng nên phải tắt
            try {
                Class.forName("com.mysql.jdbc.Driver");
                connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
            } catch (SQLException | ClassNotFoundException e) {
                e.printStackTrace();
            }
//        }
        return connection;
    }
}
