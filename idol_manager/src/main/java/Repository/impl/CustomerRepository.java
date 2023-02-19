package Repository.impl;

import Repository.ICustomerRepository;
import model.Customer;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class CustomerRepository implements ICustomerRepository {

    @Override
    public Customer loginCustomer(String email, String password) {
        PreparedStatement preparedStatement = null;
        try {
            preparedStatement = BaseRepository.getConnection()
                    .prepareStatement("select * from customer where email = ? and password = ?");
            preparedStatement.setString(1, email);
            preparedStatement.setString(2, password);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                return new Customer(resultSet.getInt(1),
                        resultSet.getString(2),
                        resultSet.getString(3),
                        resultSet.getString(4),
                        resultSet.getString(5),
                        resultSet.getString(6)
                );
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        return null;
    }

    @Override
    public void createCustomer(Customer customer) {
        PreparedStatement preparedStatement;
        try {
            preparedStatement = BaseRepository.getConnection()
                    .prepareStatement("insert into customer (name , date_of_birth , gender , email , password) values (? , ? , ? , ? , ?)");
            preparedStatement.setString(1,customer.getName());
            preparedStatement.setString(2,customer.getDateOfBirth());
            preparedStatement.setString(3,customer.getGender());
            preparedStatement.setString(4,customer.getEmail());
            preparedStatement.setString(5,customer.getPassword());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }
}
