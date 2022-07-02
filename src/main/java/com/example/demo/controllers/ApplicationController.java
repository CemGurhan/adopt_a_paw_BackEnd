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

    @DeleteMapping("deleteApplication/{id}")
    public ResponseEntity<HttpStatus> deleteApplication(@PathVariable("id") Long id){

        try{
            Application returnApplication = applicationService.findApplicationByID(id);
            applicationService.deleteApplication(returnApplication);
        }catch (Exception e){
            throw new BadRequestException("Invalid application ID");
        }

        return new ResponseEntity<>(HttpStatus.OK);




    }

    @PostMapping("/addNewApplication/{animal_id}/{customer_id}")
    public Application addNewApplication(@PathVariable("animal_id") Long animal_id,
                                         @PathVariable("customer_id") Long customer_id,
                                         @RequestParam(defaultValue = "0") ApplicationStatus applicationStatus){

        return applicationService.addNewApplication(animal_id,customer_id,applicationStatus);




    }




//    @PutMapping("updateApplicationStatus/{application_id}/{application_type_id}")
//    public ResponseEntity<HttpStatus> updateApplicationStatus(@PathVariable("application_id") Long application_id,
//                                        @PathVariable("application_type_id") Long application_type_id){
//
//        try{
//            applicationService.findApplicationTypeByID(application_type_id);
//            Application returnApplication = applicationService.findApplicationByID(application_id);
//            applicationService.updateApplicationStatus(returnApplication,application_type_id);
//            return new ResponseEntity<>(HttpStatus.OK);
//        }catch(Exception e){
//
//            if(applicationService.findApplicationByID(application_id)==null && applicationService.findApplicationTypeByID(application_type_id)==null){
//                throw new BadRequestException("Both application ID and application type ID are invalid");
//            }
//            if(applicationService.findApplicationByID(application_id)==null){
//                throw new BadRequestException("Invalid application ID");
//            } if (applicationService.findApplicationTypeByID(application_type_id)==null) {
//                throw new BadRequestException("Invalid application type ID");
//
//            }
//        }
//        return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
//    }


}
