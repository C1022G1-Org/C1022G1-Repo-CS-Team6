package Service.impl;

import Repository.impl.Repository;
import Service.IService;
import model.Idol;

import java.util.List;

public class Service implements IService {
    private final Repository idolRepository = new Repository();


    @Override
    public List<Idol> selectAllObject(String name_find){
        return this.idolRepository.selectAllObject(name_find);
    }

    @Override
    public void deleteIdol(int id) {
        idolRepository.deleteIdol(id);
    }


}
