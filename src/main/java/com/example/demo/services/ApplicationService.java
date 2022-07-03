package com.example.demo.services;

import com.example.demo.exception.BadRequestException;
import com.example.demo.models.Application;
import com.example.demo.models.Customer;
import com.example.demo.models.enums.ApplicationStatus;
import com.example.demo.repositories.AnimalRepo;
import com.example.demo.repositories.ApplicationRepo;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ApplicationService {

    private ApplicationRepo applicationRepo;
    private AnimalService animalService;

    private AnimalRepo animalRepo;
    private CustomerService customerService;

    public ApplicationService(ApplicationRepo applicationRepo, AnimalService animalService, AnimalRepo animalRepo, CustomerService customerService) {
        this.applicationRepo = applicationRepo;
        this.animalService = animalService;
        this.animalRepo = animalRepo;
        this.customerService = customerService;
    }

    public Application findApplicationByID(Long id){

        return applicationRepo.findApplicationByID(id);
    }

    public List<Application> findAllApplications(){

        return applicationRepo.findAll();

    }



    public ResponseEntity<Application> addNewApplication(Long animal_id, Long customer_id, ApplicationStatus applicationStatus){

        Application newApplication = new Application();



        if(animalService.findByID(animal_id).isEmpty() && customerService.findCustomerByID(customer_id) == null){
            throw new BadRequestException("Invalid animal_id and customer_id");
        }

        if(animalService.findByID(animal_id).isPresent()){
            newApplication.setAnimal(animalService.findByID(animal_id).get());
        }else{
            throw new BadRequestException("Invalid animal_id");
        }

        if(customerService.findCustomerByID(customer_id) != null){
            newApplication.setCustomer(customerService.findCustomerByID(customer_id));
        }else{
            throw new BadRequestException("Invalid customer_id");
        }

        if(applicationStatus!=null){
            newApplication.setApplicationStatus(applicationStatus);
        }

        applicationRepo.save(newApplication);


        return ResponseEntity.ok(newApplication);

    }

    public ResponseEntity<Application> updateApplicationStatus(Long application_id, ApplicationStatus applicationStatus){



        if(applicationRepo.findById(application_id).isPresent() && applicationStatus != null){

            Application updatedApplication = applicationRepo.findById(application_id).get();

            updatedApplication.setApplicationStatus(applicationStatus);



            if(applicationStatus.equals(ApplicationStatus.Approved)){



                animalRepo.addCustomerToAnimal(updatedApplication.getCustomer().getId(), updatedApplication.getAnimal().getId());

            }

            applicationRepo.save(updatedApplication);

            return ResponseEntity.ok(updatedApplication);

        }

        throw new BadRequestException("Invalid application_id");




    }

    public ResponseEntity<String> deleteApplication(Long application_id){

        try{
            Application returnApplication = applicationRepo.findApplicationByID(application_id);
            applicationRepo.delete(returnApplication);
            return ResponseEntity.ok("Application with id " + application_id + " deleted");
        }catch (Exception e){
            throw new BadRequestException("Invalid application ID");
        }

    }

}
