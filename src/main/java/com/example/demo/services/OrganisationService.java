package com.example.demo.services;

import com.example.demo.models.Organisation;
import com.example.demo.repositories.OrganisationRepo;
import org.springframework.stereotype.Service;

@Service
public class OrganisationService {

    private OrganisationRepo organisationRepo;

    public OrganisationService(OrganisationRepo organisationRepo){
        this.organisationRepo=organisationRepo;
    }

//    public Organisation findOrganisationByID(Long id){
//
//        return organisationRepo
//
//    }
}
