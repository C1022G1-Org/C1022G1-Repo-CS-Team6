package Repository;

import model.Customer;
import model.Idol;

public interface ICustomerRepository {

    Customer loginCustomer(String email , String password);

    void createCustomer(Customer customer);


    void like(int m_id, String i_id);

    List<Customer> selectAllObject(String name_find);

    Customer checkCustomer(String email);
}
