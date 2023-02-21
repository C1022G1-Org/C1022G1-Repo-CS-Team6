package Service;

import model.Idol;

import java.sql.SQLException;
import java.util.List;

public interface IService<O> {

    List<O> selectAllObject(String name_find);

    void deleteIdol(int id);
    void update(Idol idol) throws SQLException;
    Idol findbyID(int id);
    void create(Idol idol);
}
