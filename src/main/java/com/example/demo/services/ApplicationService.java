package com.example.demo.services;

import com.example.demo.exception.BadRequestException;
import com.example.demo.models.Animal;
import com.example.demo.models.Application;
import com.example.demo.models.Customer;
import com.example.demo.models.enums.ApplicationStatus;
import com.example.demo.models.enums.AvailableStatus;
import com.example.demo.repositories.AnimalRepo;
import com.example.demo.repositories.ApplicationRepo;
import org.springframework.context.support.ApplicationObjectSupport;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
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



    public Application addNewApplication(Long animalID, Long customerID){

        Optional<Animal> animal = animalService.findByID(animalID);
        Optional<Customer> customer = customerService.findCustomerByIDOpt(customerID);

        if (animal.isEmpty()){
            throw new BadRequestException("Invalid animal ID");
        }

        if (customer.isEmpty()){
            throw new BadRequestException("Invalid customer ID");
        }

        Application newApplication = new Application(customer.get(), animal.get());

        applicationRepo.save(newApplication);
        return newApplication;
    }

    public Application updateApplicationStatus(Long application_id, ApplicationStatus applicationStatus) throws Exception {

        Optional<Application> application = Optional.ofNullable(findApplicationByID(application_id));

        if (application.isEmpty()){
            throw new BadRequestException("Invalid Application ID");
        }

        Animal selectedAnimal = application.get().getAnimal();

        if (applicationStatus == ApplicationStatus.Approved){
            selectedAnimal.setAvailableStatus(AvailableStatus.Adopted);
            selectedAnimal.getApplications().forEach(a -> a.setApplicationStatus(ApplicationStatus.Rejected));
            selectedAnimal.getApplications().forEach(a -> applicationRepo.save(a));
        }

        animalService.updateAnimal(selectedAnimal.getId(), selectedAnimal);
        application.get().setApplicationStatus(applicationStatus);
        applicationRepo.save(application.get());
        return application.get();
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