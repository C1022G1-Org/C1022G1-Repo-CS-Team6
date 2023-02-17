package Repository;

import java.util.List;

public interface IRepository <O>{
    boolean insertObject(O o);

    List<O> selectAllObject(String name_find);

    boolean updateObject(O o);

    boolean deleteObject(int id);

    O selectById(int id);
}
