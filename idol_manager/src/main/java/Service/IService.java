package Service;

import java.util.List;

public interface IService<O> {
    boolean insertObject(O o);

    List<O> selectAllObject(String name_find);

    boolean updateObject(O o);

    boolean deleteObject(int id);

    O selectById(int id);
}
