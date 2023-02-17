package repository;

import model.Idol;

import java.sql.SQLException;

public interface IRepository {
        boolean update(Idol idol) throws SQLException;
        Idol findbyID(int id);
        }
