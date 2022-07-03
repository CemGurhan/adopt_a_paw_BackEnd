package com.example.demo.controllers;

import com.example.demo.models.Organisation;
import com.example.demo.services.OrganisationService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/organisation")
@CrossOrigin(origins = "http://localhost:3000")
public class OrganisationController {

    private OrganisationService organisationService;

    public OrganisationController(OrganisationService organisationService){
        this.organisationService = organisationService;
    }


    @GetMapping("/findOrganisationByID/{id}")
    public Organisation findOrganisationByID(@PathVariable("id") Long id){

        return organisationService.findOrganisationByID(id);

    }

    @GetMapping("/findAllOrganisations")
    public List<Organisation> findAllOrganisations(){

        return organisationService.findAllOrganisations();

    }

    @PostMapping("/addNewOrganisation")
    public ResponseEntity<Organisation> addNewOrganisation(@RequestBody Organisation organisation){

        return organisationService.addNewOrganisation(organisation);


    }

    @PutMapping("/updateOrganisation/{organisation_id}")
    public ResponseEntity<Organisation> updateOrganisation(@PathVariable("organisation_id") Long organisation_id,
                                                           @RequestBody Organisation organisationDetails){

        return organisationService.updateOrganisation(organisation_id, organisationDetails);


    }

    @DeleteMapping("/deleteOrganisation/{organisation_id}")
    public ResponseEntity<String> deleteOrganisation(@PathVariable("organisation_id") Long organisation_id){

        return organisationService.deleteOrganisation(organisation_id);

    }


}
