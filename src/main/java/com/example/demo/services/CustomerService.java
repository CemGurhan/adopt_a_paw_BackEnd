package com.example.demo.services;

import com.example.demo.exception.BadRequestException;
import com.example.demo.models.Customer;
import com.example.demo.models.enums.Species;
import com.example.demo.repositories.CustomerRepo;
import com.example.demo.repositories.SpeciesTableRepo;
import org.springframework.http.ResponseEntity;
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

    public ResponseEntity<Customer> addNewCustomer(Customer customer) {

        customerRepo.save(customer);

        return ResponseEntity.ok(customer);

    }




    public List<String> findCustomerPreferences(Long id) {

        return customerRepo.findCustomerPreferences(id);

    }

    public ResponseEntity<Customer> updateCustomer(Long id, Customer customerDetails){

        if(customerRepo.findById(id).isPresent()){

            Customer returnCustomer = customerRepo.findById(id).get();

            if(customerDetails.getFirstName()!=null) returnCustomer.setFirstName(customerDetails.getFirstName());
            if(customerDetails.getLastName()!=null) returnCustomer.setLastName(customerDetails.getLastName());
            if(customerDetails.getDateOfBirth() != null)  returnCustomer.setDateOfBirth(customerDetails.getDateOfBirth());
            if(customerDetails.getLocation() != null)  returnCustomer.setLocation(customerDetails.getLocation());



            customerRepo.save(returnCustomer);

            return ResponseEntity.ok(returnCustomer);

        }else{
            throw new BadRequestException("Invalid customer_id");
        }





    }

    public void deleteCustomerPreferences(Long id){


            customerRepo.deleteCustomerPreferences(id);



    }

    public ResponseEntity<String> deleteCustomer(Long customer_id){

        if(customerRepo.findCustomerByID(customer_id) != null){

            Customer returnCustomer = customerRepo.findCustomerByID(customer_id);
            customerRepo.delete(returnCustomer);
            return ResponseEntity.ok("Customer with id " + customer_id + " deleted");

        }else{
            throw new BadRequestException("Invalid customer id");
        }

    }

    public ResponseEntity<Customer> addCustomerPreferredSpecies(Long customer_id, Species species){

        if(speciesTableRepo.findBySpeciesEquals(species.toString()) == null){

            speciesTableRepo.addToSpeciesTable(species.toString());

        }

        if(customerRepo.findCustomerByID(customer_id) != null){
            customerRepo.addCustomerPreferredSpecies(customer_id, speciesTableRepo.findSpeciesID(species.toString()));

            return ResponseEntity.ok(customerRepo.findCustomerByID(customer_id));
        }else{
            throw new BadRequestException("Invalid customer_id");
        }




    }


}
