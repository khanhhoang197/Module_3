package com.khanhhoang.customermanagement.service;

import com.khanhhoang.customermanagement.model.Customer;

import java.util.List;

public interface CustomerService {
    List<Customer> findAll();

    void save(Customer customer);

    void update(int id, Customer customer);

    void remove(int id);

    Customer findById(int id);
}
