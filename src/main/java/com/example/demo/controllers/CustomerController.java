package com.example.demo.controllers;

import com.example.demo.exception.BadRequestException;
import com.example.demo.models.Customer;
import com.example.demo.models.enums.Species;
import com.example.demo.services.CustomerService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/customer")
@CrossOrigin(origins = "http://localhost:3000")
public class CustomerController {

    private CustomerService customerService;

    public CustomerController(CustomerService customerService){
        this.customerService = customerService;
    }


    @GetMapping("/findCustomerByID/{id}")
    public Customer findCustomerByID(@PathVariable("id") Long id){

        if(customerService.findCustomerByID(id)==null){
            throw new BadRequestException("Invalid Customer ID");
        }

        return customerService.findCustomerByID(id);


    }

    @GetMapping("/findAllCustomers")
    public List<Customer> findAllCustomers(){

        return customerService.findAllCustomers();

    }

    @PostMapping("/setCustomerPreferredSpecies/{customer_id}/{species}")
    public ResponseEntity<Customer> setCustomerSpecies(@PathVariable("customer_id") Long customer_id,
                                       @PathVariable("species") Species species){



        return customerService.addCustomerPreferredSpecies(customer_id, species);





    }





    @PostMapping("addNewCustomer")
    public ResponseEntity<Customer> addNewCustomer(@RequestBody Customer customer){

        return customerService.addNewCustomer(customer);

    }


    @PutMapping("updateCustomer/{id}")
    public ResponseEntity<Customer> updateCustomer(@PathVariable("id") Long id,
                               @RequestBody Customer customerDetails){

        Customer returnCustomer = customerService.findCustomerByID(id);

        return customerService.updateCustomer(returnCustomer, customerDetails);

    }

    @DeleteMapping("deleteCustomer/{id}")
    public ResponseEntity<String> deleteCustomer(@PathVariable("id") Long customer_id){

        customerService.deleteCustomerPreferences(customer_id);
        return customerService.deleteCustomer(customer_id);

    }











}
