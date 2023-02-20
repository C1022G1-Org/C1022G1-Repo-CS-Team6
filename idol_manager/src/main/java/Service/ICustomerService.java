package Service;

import model.Customer;


public interface ICustomerService {
    Customer loginCustomer(String email , String password);

    void createCustomer(Customer customer);

}
