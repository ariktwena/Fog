package infrastructure;

import domain.customer.Customer;
import domain.customer.CustomerRepository;

import java.util.ArrayList;

public class DBCustomer implements CustomerRepository {
    private final Database database;
    
    public DBCustomer(Database database) {
        this.database = database;
    }
    
    @Override
    public ArrayList<Customer> getAllKunderFromDB() throws DBException {
        return null;
    }
    
    @Override
    public Customer getKundeById(int kunde_id) throws DBException {
        return null;
    }
}