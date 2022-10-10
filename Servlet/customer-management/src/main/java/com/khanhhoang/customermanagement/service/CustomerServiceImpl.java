package com.khanhhoang.customermanagement.service;

import com.khanhhoang.customermanagement.model.Customer;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CustomerServiceImpl implements CustomerService{
    private static Map<Integer, Customer> customers;

    static {
        customers = new HashMap<>();
        customers.put(1, new Customer(1,"Khanh","khanh@gmail.com","Hue"));
        customers.put(2, new Customer(2,"Binh","binh@gmail.com","Quang tri"));
        customers.put(3, new Customer(3,"Tung","hung@gmail.com","Hue"));
        customers.put(4, new Customer(4,"Hieu","hieu@gmail.com","Hue"));
        customers.put(5, new Customer(5,"Ha","ha@gmail.com","Hue"));
    }

    @Override
    public List<Customer> findAll() {
        return new ArrayList<>(customers.values());
    }

    @Override
    public void save(Customer customer) {
        customers.put(customer.getId(), customer);
    }

    @Override
    public void update(int id, Customer customer) {
        customers.put(id,customer);
    }

    @Override
    public void remove(int id) {
        customers.remove(id);
    }

    @Override
    public Customer findById(int id) {
        return customers.get(id);
    }
}
