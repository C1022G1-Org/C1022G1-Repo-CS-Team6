package Repository;

import model.Customer;
import model.Idol;

import java.util.List;

public interface ICustomerRepository {

    Customer loginCustomer(String email , String password);

    void createCustomer(Customer customer);


    void like(int m_id, String i_id);

    List<Idol> selectAllObject(String name_find);
}
