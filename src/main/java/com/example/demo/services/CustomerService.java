package com.example.demo.services;

import com.example.demo.models.Customer;
import com.example.demo.repositories.CustomerRepo;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CustomerService {

    private CustomerRepo customerRepo;

    public CustomerService(CustomerRepo customerRepo){
        this.customerRepo = customerRepo;
    }


    public Customer findCustomerByID(Long id){
        return customerRepo.findCustomerByID(id);
    }

    public List<Customer> findAllCustomers(){

        return customerRepo.findAll();

    }

    public void addNewCustomer(Customer customer) {

        customerRepo.save(customer);

    }




    public List<String> findCustomerPreferences(Long id) {

        return customerRepo.findCustomerPreferences(id);

    }

    public void updateCustomer(Customer returnCustomer, Customer customerDetails){

        if(customerDetails.getFirstName()!=null){
            returnCustomer.setFirstName(customerDetails.getFirstName());
        }

        returnCustomer.setLastName(customerDetails.getLastName());
        returnCustomer.setAge(customerDetails.getAge());
        returnCustomer.setLocation(customerDetails.getLocation());

        customerRepo.save(returnCustomer);




    }

    public void deleteCustomerPreferences(Long id){
        customerRepo.deleteCustomerPreferences(id);
    }

    public void deleteCustomer(Customer returnCustomer){
        customerRepo.delete(returnCustomer);
    }


}
