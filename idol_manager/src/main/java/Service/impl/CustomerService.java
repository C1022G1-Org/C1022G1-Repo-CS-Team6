package Service.impl;

import Service.ICustomerService;
import model.Customer;

public class CustomerService implements ICustomerService {
    private static ICustomerService iCustomerRepository = new CustomerService();

    @Override
    public Customer loginCustomer(String email, String password) {
        return iCustomerRepository.loginCustomer(email,password);
    }

    @Override
    public void createCustomer(Customer customer) {
        customerRepository.createCustomer(customer);

    }
}
