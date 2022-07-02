package com.example.demo.controllers;

import com.example.demo.exception.BadRequestException;
import com.example.demo.exception.EmptyDbException;
import com.example.demo.models.Application;
import com.example.demo.models.enums.ApplicationStatus;
import com.example.demo.services.AnimalService;
import com.example.demo.services.ApplicationService;
import com.example.demo.services.CustomerService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

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

    @DeleteMapping("deleteApplication/{application_id}")
    public ResponseEntity<String> deleteApplication(@PathVariable("application_id") Long application_id){



        return applicationService.deleteApplication(application_id);




    }

    @PostMapping("/addNewApplication/{animal_id}/{customer_id}")
    public ResponseEntity<Application> addNewApplication(@PathVariable("animal_id") Long animal_id,
                                         @PathVariable("customer_id") Long customer_id,
                                         @RequestParam(defaultValue = "0") ApplicationStatus applicationStatus){

        return applicationService.addNewApplication(animal_id,customer_id,applicationStatus);




    }

    @PutMapping("/updateApplicationStatus/{application_id}")
    public ResponseEntity<Application> updateApplictionStatus(@PathVariable("application_id") Long application_id,
                                              @RequestParam ApplicationStatus applicationStatus){

        return applicationService.updateApplicationStatus(application_id, applicationStatus);
    }







}
