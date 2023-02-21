package Service.impl;

import Repository.impl.CustomerRepository;
import Service.ICustomerService;
import model.Customer;

public class CustomerService implements ICustomerService {
    private final CustomerRepository customerRepository = new CustomerRepository();

    @Override
    public Customer loginCustomer(String email, String password) {
        return customerRepository.loginCustomer(email, password);
    }

    @Override
    public void createCustomer(Customer customer) {
        customerRepository.createCustomer(customer);
    }

    @Override
    public Customer checkCustomer(String email) {
        return customerRepository.checkCustomer(email);
    }


}
