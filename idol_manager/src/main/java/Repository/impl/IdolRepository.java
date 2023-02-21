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
                String skill = resultSet.getString("skill");
                String img = resultSet.getString("img");
                Idol idol = new Idol(id, name, gender, birthdate, country, skill , img);
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
    @Override
    public void update(Idol idol){
        PreparedStatement preparedStatement = null;
        try {
            preparedStatement = BaseRepository.getConnection()
                            .prepareStatement("update idol\n" +
                                    "set name = ?, gender = ?, date_of_birth = ?, country = ?, skill = ? , img = ? \n" +
                                    "where id = ?");
            preparedStatement.setString(1, idol.getName());
            preparedStatement.setString(2, idol.getGender());
            preparedStatement.setString(3, idol.getDateOfBirth());
            preparedStatement.setString(4, idol.getCountry());
            preparedStatement.setString(5, idol.getSkill());
            preparedStatement.setString(6, idol.getImg());
            preparedStatement.setInt(7,idol.getId());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }
    @Override
    public Idol findbyID(int id) {
        PreparedStatement preparedStatement = null;
        try {
            preparedStatement = BaseRepository.getConnection()
                    .prepareStatement("select id, name , gender , date_of_birth , country , skill , img from idol where id = ? order by name");
        preparedStatement.setInt(1,id);
        ResultSet resultSet = preparedStatement.executeQuery();
        Idol idol;
        while (resultSet.next()){
            idol = new Idol();
            idol.setId(resultSet.getInt("id"));
            idol.setName(resultSet.getString("name"));
            idol.setGender(resultSet.getString("gender"));
            idol.setDateOfBirth(resultSet.getString("date_of_birth"));
            idol.setCountry(resultSet.getString("country"));
            idol.setSkill(resultSet.getString("skill"));
            idol.setImg(resultSet.getString("img"));

            return  idol;
        }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    return null;
    }

    @Override
    public void create(Idol idol) {
        Connection connection = BaseRepository.getConnection();
        try (PreparedStatement preparedStatement = connection.prepareStatement("insert into idol (name,gender,date_of_birth , country , skill , img) values (?,?,?,?,?,?)")) {
            preparedStatement.setString(1, idol.getName());
            preparedStatement.setString(2, idol.getGender());
            preparedStatement.setString(3, idol.getDateOfBirth());
            preparedStatement.setString(4, idol.getCountry());
            preparedStatement.setString(5, idol.getSkill());
            preparedStatement.setString(6, idol.getImg());

            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}