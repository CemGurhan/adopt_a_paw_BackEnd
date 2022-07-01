package com.example.demo.controllers;

import com.example.demo.models.Customer;
import com.example.demo.services.CustomerService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
//@RequestMapping("/customer")
@CrossOrigin(origins = "http://localhost:3000")
public class CustomerController {

    private CustomerService customerService;

    public CustomerController(CustomerService customerService){
        this.customerService = customerService;
    }


    @GetMapping("findCustomerByID/{id}")
    public Customer findCustomerByID(@PathVariable("id") Long id){

        return customerService.findCustomerByID(id);


    }

    @GetMapping("findAllCustomers")
    public List<Customer> findAllCustomers(){
        return customerService.findAllCustomers();
    }



    @GetMapping("find_customer_preferences/{id}")
    public List<String> findCustomerPreferences(@PathVariable("id") Long id){

        return customerService.findCustomerPreferences(id);

    }

    @PostMapping("addNewCustomer")
    public void addNewCustomer(@RequestBody Customer customer){

        customerService.addNewCustomer(customer);

    }


    @PutMapping("updateCustomer/{id}")
    public void updateCustomer(@PathVariable("id") Long id,
                               @RequestBody Customer customerDetails){

        Customer returnCustomer = customerService.findCustomerByID(id);

        customerService.updateCustomer(returnCustomer, customerDetails);





    }

    @DeleteMapping("deleteCustomer/{id}")
    public void deleteCustomer(@PathVariable("id") Long id){

        Customer returnCustomer = customerService.findCustomerByID(id);

        customerService.deleteCustomerPreferences(id);
        customerService.deleteCustomer(returnCustomer);

    }






}
