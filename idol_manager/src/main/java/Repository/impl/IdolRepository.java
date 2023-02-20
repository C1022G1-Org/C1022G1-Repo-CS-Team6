package Repository.impl;

import Repository.IRepository;
import model.Idol;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class IdolRepository implements IRepository<Idol> {

    @Override
    public boolean insertObject(Idol o) {
        return false;
    }

    @Override
    public List<Idol> selectAllObject(String name_find) {
        List<Idol> idols = new ArrayList<>();
        Connection connection = BaseRepository.getConnection();

        try {
            CallableStatement callableStatement = connection.prepareCall("CALL select_all_idol_by_name(?)");
            callableStatement.setString(1,name_find);

            ResultSet resultSet = callableStatement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                String gender = resultSet.getString("gender");
                String birthdate = resultSet.getString("date_of_birth");
                String country = resultSet.getString("country");
                String popular = resultSet.getString("popular");
                String skill = resultSet.getString("skill");
                Idol idol = new Idol(id, name, gender, birthdate, country, popular, skill);
                idols.add(idol);
            }
            connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return idols;
    }

    @Override
    public void deleteIdol(int id) {
        CallableStatement callableStatement = null;
        try {
            callableStatement = BaseRepository.getConnection()
                    .prepareCall("Call delete_idol(?);");
            callableStatement.setInt(1,id);
            callableStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}