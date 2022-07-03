package com.example.demo.services;

import com.example.demo.models.Application;
import com.example.demo.repositories.ApplicationRepo;
import org.springframework.context.support.ApplicationObjectSupport;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ApplicationService {

    private ApplicationRepo applicationRepo;
    private AnimalService animalService;
    private CustomerService customerService;

    public ApplicationService(ApplicationRepo applicationRepo, AnimalService animalService, CustomerService customerService) {
        this.applicationRepo = applicationRepo;
        this.animalService = animalService;
        this.customerService = customerService;
    }

    public Application findApplicationByID(Long id) throws Exception {

        Optional <Application> oApplication = applicationRepo.findById(id);
        if (oApplication.isEmpty()){
            throw new Exception("Application of ID " + id + " does not exist");
        }
        return oApplication.get();
    }

    public List<Application> findAllApplications(){
        return applicationRepo.findAll();
    }

    public void addNewApplication(Long application_type_id, Long animal_id, Long customer_id) throws Exception{

        if (animalService.findByID(animal_id).isEmpty()){
            throw new Exception("Animal not found");
        }
        applicationRepo.addNewApplication(application_type_id, animal_id, customer_id);
    }

//    public void updateApplicationStatus(Application returnApplication, Long application_type_id){
//
//        returnApplication.setApplication_type_id(application_type_id);
//
//        applicationRepo.save(returnApplication);
//
//    }

    public void deleteApplication(Application returnApplication){

        applicationRepo.delete(returnApplication);
    }

}
