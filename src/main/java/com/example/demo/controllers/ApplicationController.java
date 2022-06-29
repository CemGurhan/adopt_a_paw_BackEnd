package com.example.demo.controllers;

import com.example.demo.models.Application;
import com.example.demo.services.ApplicationService;
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

    public ApplicationController(ApplicationService applicationService){
        this.applicationService = applicationService;
    }

    @GetMapping("findApplicationByID/{id}")
    public Application findApplicationByID(@PathVariable("id") Long id){

        return applicationService.findApplicationByID(id);

    }

    @GetMapping("findAllApplications")
    public List<Application> findAllApplications(){
        return applicationService.findAllApplications();
    }

    @PostMapping("addNewApplication/{application_type_id}/{animal_id}/{customer_id}")
    public ResponseEntity addNewApplication(@PathVariable("application_type_id") Long application_type_id,
                                                         @PathVariable("animal_id") Long animal_id,
                                                         @PathVariable("customer_id") Long customer_id){

        try {
            applicationService.addNewApplication(application_type_id, animal_id, customer_id);
            return ResponseEntity.ok().body("Added");
        } catch (Exception e) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, e.getMessage(), e);
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



}
