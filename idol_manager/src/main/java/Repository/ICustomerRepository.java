package Repository;

import model.Customer;

public interface ICustomerRepository {

    Customer loginCustomer(String email , String password);

    void createCustomer(Customer customer);


    void like(int m_id, String i_id);
}
