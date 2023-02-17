package repository;

import model.Idol;

import java.sql.*;

public class Repository implements IRepository {

    private static final String SELECT_IDOL_BY_ID = "select id,name,email,country from users where id =?";
    private static final String SELECT_ALL_IDOL = "select * from idol";
    private static final String UPDATE_IDOL_SQL = "update users set name = ?,gender= ?, birth=?, country =?, popular=?, skill=? where id = ?;";

    private static final String jdbcURL = "jdbc:mysql://localhost:3306/demo?useSSL=false";
    private static final String jdbcUsername = "root";
    private static final String jdbcPassword = "baga09";

    public Repository() {
    }

    protected static Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return connection;
    }


    @Override
    public boolean update(Idol idol) throws SQLException {
        boolean rowUpdated;
        try (Connection connection = getConnection(); PreparedStatement statement = connection.prepareStatement(UPDATE_IDOL_SQL)) {
            statement.setString(1, idol.getName());
            statement.setString(2, idol.getGender());
            statement.setString(3, idol.getBirth());
            statement.setString(4, idol.getCountry());
            statement.setString(5, idol.getPopular());
            statement.setString(6, idol.getSkill());
            rowUpdated = statement.executeUpdate() > 0;
        }
        return rowUpdated;
    }

    @Override
    public Idol findbyID(int id) {
        Idol idol = null;
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_IDOL_BY_ID)) {
            preparedStatement.setInt(1, id);
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                String name = rs.getString("name");
                String gender = rs.getString("gender");
                String birth = rs.getString("birth");
                String country = rs.getString("country");
                String popular = rs.getString("popular");
                String skill = rs.getString("skill");
                idol = new Idol(id, name, gender, birth, country, popular, skill);
            }

        } catch (SQLException e) {

        }
        return idol;
    }
}