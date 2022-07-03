package com.example.demo.controllers;

import com.example.demo.exception.BadRequestException;
import com.example.demo.exception.EmptyDbException;
import com.example.demo.models.Application;
import com.example.demo.services.AnimalService;
import com.example.demo.services.ApplicationService;
import com.example.demo.services.CustomerService;
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

//    @GetMapping("/findApplicationByID/{id}")
//    public Application findApplicationByID(@PathVariable("id") Long id){
//
//        if(applicationService.findApplicationByID(id) == null){
//            throw new BadRequestException("Invalid Application ID. This Application does not exist");
//        }else {
//            return applicationService.findApplicationByID(id);
//        }
//
//    }

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


//    @PostMapping("addNewApplication/{application_type_id}/{animal_id}/{customer_id}")
//    public ResponseEntity<HttpStatus> addNewApplication(@PathVariable("application_type_id") Long application_type_id,
//                                                         @PathVariable("animal_id") Long animal_id,
//                                                         @PathVariable("customer_id") Long customer_id){
//
//        try {
//            applicationService.addNewApplication(application_type_id, animal_id, customer_id);
//            return new ResponseEntity<>(HttpStatus.OK);
//        } catch (Exception e) {
//            if(applicationService.findApplicationTypeByID(application_type_id) == null&&customerService.findCustomerByID(customer_id)==null
//               && animalService.findByID(animal_id).isEmpty()){
//                throw new BadRequestException("customer_id, application_type_id and animal_id are all invalid");
//            }
//            if(applicationService.findApplicationTypeByID(application_type_id) == null&&customerService.findCustomerByID(customer_id)==null){
//                throw new BadRequestException("both customer_id and application_type_id are invalid");
//            }
//            if(animalService.findByID(animal_id).isEmpty()&&applicationService.findApplicationTypeByID(application_type_id) == null){
//                throw new BadRequestException("both animal_id and application_type_id are invalid");
//            }
//            if(animalService.findByID(animal_id).isEmpty()&&customerService.findCustomerByID(customer_id)==null){
//                throw new BadRequestException("both animal_id and customer_id are invalid");
//            }
//            if(animalService.findByID(animal_id).isEmpty()){
//                throw new BadRequestException("Invalid animal_id");
//            }
//            if(customerService.findCustomerByID(customer_id)==null){
//                throw new BadRequestException("Invalid customer_id");
//            }
//            if(applicationService.findApplicationTypeByID(application_type_id) == null){
//                throw new BadRequestException("Invalid application_type_id");
//            }
//
//            return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
//        }
//    }

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
}
