package com.example.demo.services;

import com.example.demo.models.Organisation;
import com.example.demo.repositories.OrganisationRepo;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrganisationService {

    private OrganisationRepo organisationRepo;

    public OrganisationService(OrganisationRepo organisationRepo){
        this.organisationRepo=organisationRepo;
    }

    public Organisation findOrganisationByID(Long id){

        return organisationRepo.findOrganisationByID(id);

    }

    public List<Organisation> findAllOrganisations(){

        return organisationRepo.findAll();

    }

    public void addnewOrganisation(Organisation returnOrganisation, Organisation organisationDetails){

        returnOrganisation.setName(organisationDetails.getName());

        organisationRepo.save(returnOrganisation);



    }
}
