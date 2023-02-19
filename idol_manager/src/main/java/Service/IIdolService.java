package Service;

import java.util.List;

public interface IIdolService<O> {

    List<O> selectAllObject(String name_find);

    void deleteIdol(int id);
}
