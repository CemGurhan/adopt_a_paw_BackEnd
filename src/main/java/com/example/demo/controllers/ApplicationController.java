package com.example.demo.controllers;

import com.example.demo.exception.BadRequestException;
import com.example.demo.exception.EmptyDbException;
import com.example.demo.models.Application;
import com.example.demo.models.enums.ApplicationStatus;
import com.example.demo.services.AnimalService;
import com.example.demo.services.ApplicationService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

import java.util.List;

@RestController
@RequestMapping("/application")
//@RequestMapping("/application")
@CrossOrigin(origins = "http://localhost:3000")
public class ApplicationController {

    private ApplicationService applicationService;



    public ApplicationController(ApplicationService applicationService) {
        this.applicationService = applicationService;
    }

    @GetMapping("/findAll")
    public ResponseEntity<List<Application>> findAllApplications(){
        return ResponseEntity.ok().body(applicationService.findAllApplications());
    }

    @GetMapping("/{id}")
    public ResponseEntity<Application> findApplicationByID(@PathVariable("id") Long id){
        try{
            return ResponseEntity.ok().body(applicationService.findApplicationByID(id));
        } catch (Exception e){
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, e.getMessage(), e);
        }
    }

    @DeleteMapping("/deleteApplication/{application_id}")
    public ResponseEntity<String> deleteApplication(@PathVariable("application_id") Long application_id){

        return applicationService.deleteApplication(application_id);
    }

    @PostMapping("/addNewApplication/{animal_id}/{customer_id}")
    public ResponseEntity<Application> addNewApplication(@PathVariable("animal_id") Long animal_id,
                                                         @PathVariable("customer_id") Long customer_id){

        try {
            return ResponseEntity.ok().body(applicationService.addNewApplication(animal_id, customer_id));
        } catch (Exception e){
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, e.getMessage(), e);
        }
    }


    @PutMapping("/updateApplicationStatus/{application_id}")
    public ResponseEntity<Application> updateApplicationStatus(@PathVariable("application_id") Long application_id,
                                                               @RequestParam(name = "application_status") ApplicationStatus applicationStatus){
        try {
            return ResponseEntity.ok().body(applicationService.updateApplicationStatus(application_id, applicationStatus));
        } catch (Exception e){
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, e.getMessage(), e);
        }
    }

}