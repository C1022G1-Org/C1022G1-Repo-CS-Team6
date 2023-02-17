package service;

import model.Idol;
import repository.IRepository;
import repository.Repository;

import java.sql.SQLException;

public class Service implements IService {
    IRepository repository = new Repository();

    @Override
    public void update(Idol idol) throws SQLException {
        repository.update(idol);
    }

    @Override
    public Idol findbyID(int id) {
        return repository.findbyID(id);
    }
}
