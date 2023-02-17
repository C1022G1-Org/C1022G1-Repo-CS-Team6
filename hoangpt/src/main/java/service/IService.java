package service;

import model.Idol;

import java.sql.SQLException;

public interface IService {
     void update(Idol idol) throws SQLException;
     Idol findbyID(int id);
}
