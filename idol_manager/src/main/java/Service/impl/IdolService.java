package Service.impl;

import Repository.impl.IdolRepository;
import Service.IService;
import model.Idol;

import java.util.List;

public class IdolService implements IService {
    private final IdolRepository idolRepository = new IdolRepository();
    @Override
    public boolean insertObject(Object o) {
        return false;
    }

    @Override
    public List<Idol> selectAllObject(String name_find){
        return this.idolRepository.selectAllObject(name_find);
    }

    @Override
    public boolean updateObject(Object o) {
        return false;
    }

    @Override
    public boolean deleteObject(int id) {
        return false;
    }

    @Override
    public Object selectById(int id) {
        return null;
    }
}
