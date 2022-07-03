package com.example.demo.services;

import com.example.demo.exception.BadRequestException;
import com.example.demo.models.Organisation;
import com.example.demo.repositories.OrganisationRepo;
import org.aspectj.weaver.ast.Or;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrganisationService {

    private OrganisationRepo organisationRepo;

    public OrganisationService(OrganisationRepo organisationRepo){
        this.organisationRepo=organisationRepo;
    }

    public Organisation findOrganisationByID(Long id){

        if(organisationRepo.findById(id).isPresent()){
            return organisationRepo.findOrganisationByID(id);
        }else{
            throw new BadRequestException("Invalid organisation id");
        }



    }

    public List<Organisation> findAllOrganisations(){

        return organisationRepo.findAll();

    }

    public ResponseEntity<Organisation> addNewOrganisation(Organisation organisation){

        organisationRepo.save(organisation);

        return ResponseEntity.ok(organisation);

    }

    public ResponseEntity<Organisation> updateOrganisation(Long organisation_id, Organisation organisationDetails ){

        if(organisationRepo.findById(organisation_id).isPresent()){

            Organisation returnOrganisation = organisationRepo.findById(organisation_id).get();

            if(organisationDetails.getName() != null)  returnOrganisation.setName(organisationDetails.getName());
            if(organisationDetails.getSlogan() != null) returnOrganisation.setSlogan(organisationDetails.getSlogan());

            organisationRepo.save(returnOrganisation);

            return ResponseEntity.ok(returnOrganisation);

        }else{

            throw new BadRequestException("Invalid organisation_id");
        }

    }


    public ResponseEntity<String> deleteOrganisation(Long organisation_id){

        if(organisationRepo.findById(organisation_id).isPresent()){

            organisationRepo.delete( organisationRepo.findById(organisation_id).get());

            return ResponseEntity.ok("Organisation with id " + organisation_id + " deleted");


        }else{
            throw new BadRequestException("Invalid organisation_id");
        }


    }
}
