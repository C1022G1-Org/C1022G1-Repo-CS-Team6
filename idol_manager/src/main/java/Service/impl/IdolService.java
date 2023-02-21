package Service.impl;

import Repository.impl.IdolRepository;
import Service.IService;
import model.Idol;

import java.sql.SQLException;
import java.util.List;

public class IdolService implements IService {
    private final IdolRepository idolRepository = new IdolRepository();


    @Override
    public List<Idol> selectAllObject(String name_find){
        return this.idolRepository.selectAllObject(name_find);
    }

    @Override
    public void deleteIdol(int id) {
        idolRepository.deleteIdol(id);
    }

    @Override
    public void update(Idol idol) throws SQLException {
        idolRepository.update(idol);
    }

    @Override
    public Idol findbyID(int id) {
        return idolRepository.findbyID(id);
    }

    @Override
    public void create(Idol idol) {
        idolRepository.create(idol);
    }
}
