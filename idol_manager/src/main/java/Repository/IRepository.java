package Repository;

import java.util.List;

public interface IRepository<O>{
    boolean insertObject(O o);

    List<O> selectAllObject(String name_find);

    void deleteIdol(int id);
}
