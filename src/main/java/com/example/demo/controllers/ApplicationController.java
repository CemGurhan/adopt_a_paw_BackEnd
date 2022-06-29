package com.example.demo.controllers;

import com.example.demo.exception.BadRequestException;
import com.example.demo.exception.EmptyDbException;
import com.example.demo.models.Application;
import com.example.demo.models.ApplicationTypeEnums;
import com.example.demo.repositories.AnimalRepo;
import com.example.demo.services.AnimalService;
import com.example.demo.services.ApplicationService;
import com.example.demo.services.CustomerService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

import java.util.List;

@RestController
//@RequestMapping("/application")
@CrossOrigin(origins = "http://localhost:3000")
public class ApplicationController {

    private ApplicationService applicationService;
    private AnimalService animalService;

    private CustomerService customerService;

    public ApplicationController(ApplicationService applicationService, AnimalService animalService, CustomerService customerService) {
        this.applicationService = applicationService;
        this.animalService = animalService;
        this.customerService = customerService;
    }

    @GetMapping("findApplicationByID/{id}")
    public Application findApplicationByID(@PathVariable("id") Long id){

        if(applicationService.findApplicationByID(id) == null){
            throw new BadRequestException("Invalid Application ID. This Application does not exist");
        }else {
            return applicationService.findApplicationByID(id);
        }

    }

    @GetMapping("findAllApplications")
    public List<Application> findAllApplications(){

        if(applicationService.findAllApplications()==null){
            throw new EmptyDbException("'Applications' database is empty");
        }else{
            return applicationService.findAllApplications();
        }



    }

    @PostMapping("addNewApplication/{application_type_id}/{animal_id}/{customer_id}")
    public ResponseEntity addNewApplication(@PathVariable("application_type_id") Long application_type_id,
                                                         @PathVariable("animal_id") Long animal_id,
                                                         @PathVariable("customer_id") Long customer_id){

        try {
            applicationService.addNewApplication(application_type_id, animal_id, customer_id);
            return ResponseEntity.ok().body("Added");
        } catch (Exception e) {
            if(applicationService.findApplicationTypeByID(application_type_id) == null&&customerService.findCustomerByID(customer_id)==null
               && animalService.findByID(animal_id).isEmpty()){
                throw new BadRequestException("customer_id, application_type_id and animal_id are all invalid");
            }
            if(applicationService.findApplicationTypeByID(application_type_id) == null&&customerService.findCustomerByID(customer_id)==null){
                throw new BadRequestException("both customer_id and application_type_id are invalid");
            }
            if(animalService.findByID(animal_id).isEmpty()&&applicationService.findApplicationTypeByID(application_type_id) == null){
                throw new BadRequestException("both animal_id and application_type_id are invalid");
            }
            if(animalService.findByID(animal_id).isEmpty()&&customerService.findCustomerByID(customer_id)==null){
                throw new BadRequestException("both animal_id and customer_id are invalid");
            }
            if(animalService.findByID(animal_id).isEmpty()){
                throw new BadRequestException("Invalid animal_id");
            }
            if(customerService.findCustomerByID(customer_id)==null){
                throw new BadRequestException("Invalid customer_id");
            }
            if(applicationService.findApplicationTypeByID(application_type_id) == null){
                throw new BadRequestException("Invalid application_type_id");
            }

            throw new BadRequestException("ERROR");
        }
    }

    @PutMapping("updateApplicationStatus/{application_id}/{application_type_id}")
    public void updateApplicationStatus(@PathVariable("application_id") Long application_id,
                                        @PathVariable("application_type_id") Long application_type_id){

        Application returnApplication = applicationService.findApplicationByID(application_id);

        applicationService.updateApplicationStatus(returnApplication,application_type_id);


    }

    @DeleteMapping("deleteApplication/{id}")
    public void deleteApplication(@PathVariable("id") Long id){

        Application returnApplication = applicationService.findApplicationByID(id);

        applicationService.deleteApplication(returnApplication);



    }

    @GetMapping("findApplicationTypeByID/{id}")
    public ApplicationTypeEnums findApplicationTypeByID(@PathVariable("id") Long id){
        return applicationService.findApplicationTypeByID(id);
    }



}
