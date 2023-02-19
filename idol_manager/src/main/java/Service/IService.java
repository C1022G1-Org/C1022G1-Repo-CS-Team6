package Service;

import java.util.List;

public interface IService<O> {

    List<O> selectAllObject(String name_find);

    void deleteIdol(int id);
}
