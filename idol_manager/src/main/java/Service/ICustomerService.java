package Service;

import model.Customer;


public interface ICustomerService {
    Customer loginCustomer(String email , String password);

    void createCustomer(Customer customer);

    Object selectAllObject(String name_find);

    void deleteCustomer(int id);
}
