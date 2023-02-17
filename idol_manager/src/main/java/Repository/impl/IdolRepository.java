package Repository.impl;

import Repository.BaseRepository;
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
        List<Idol> idolList = new ArrayList<>();
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
                idolList.add(idol);
            }
            connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return idolList;
    }

    @Override
    public boolean updateObject(Idol o) {
        return false;
    }

    @Override
    public boolean deleteObject(int id) {
        return false;
    }

    @Override
    public Idol selectById(int id) {
        return null;
    }

}