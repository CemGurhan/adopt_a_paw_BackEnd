package com.example.demo.services;

import com.example.demo.models.Customer;
import com.example.demo.models.enums.Species;
import com.example.demo.repositories.CustomerRepo;
import com.example.demo.repositories.SpeciesTableRepo;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CustomerService {

    private CustomerRepo customerRepo;

    private SpeciesTableRepo speciesTableRepo;

    public CustomerService(CustomerRepo customerRepo, SpeciesTableRepo speciesTableRepo) {
        this.customerRepo = customerRepo;
        this.speciesTableRepo = speciesTableRepo;
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

    public void addCustomerPreferredSpecies(Long customer_id, Species species){

        if(speciesTableRepo.findBySpeciesEquals(species.toString()) == null){

            speciesTableRepo.addToSpeciesTable(species.toString());

        }

        customerRepo.addCustomerPreferredSpecies(customer_id, speciesTableRepo.findSpeciesID(species.toString()));

    }


}
