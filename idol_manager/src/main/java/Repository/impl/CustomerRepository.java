package Repository.impl;

import Repository.ICustomerRepository;
import model.Customer;
import model.Idol;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

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
    @Override
    public void like(int m_id, String i_id) {
        PreparedStatement preparedStatement;
        try {
            preparedStatement = BaseRepository.getConnection()
                    .prepareStatement("insert into *  (name , date_of_birth , gender , email , password) values (? , ? , ? , ? , ?)");
            preparedStatement.setInt(1,m_id);
            preparedStatement.setString(2,i_id);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<Customer> selectAllObject(String name_find) {
        List<Customer> customers = new ArrayList<>();
        Connection connection = BaseRepository.getConnection();

        try {
            CallableStatement callableStatement = connection.prepareCall("CALL select_all_idol_by_name(?)");
            callableStatement.setString(1,name_find);

            ResultSet resultSet = callableStatement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                String gender = resultSet.getString("gender");
                String birthdate = resultSet.getString("date_of_birth");
                String email = resultSet.getString("email");
                String password = resultSet.getString("password");
                Customer customer = new Customer(id,name,birthdate,gender,email,password);
                customers.add(customer);
            }
            connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return customers;
    }
    @Override
    public Customer checkCustomer(String email) {
        PreparedStatement preparedStatement = null;
        try {
            preparedStatement = BaseRepository.getConnection()
                    .prepareStatement("select * from customer where email = ?");
            preparedStatement.setString(1, email);
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
}
