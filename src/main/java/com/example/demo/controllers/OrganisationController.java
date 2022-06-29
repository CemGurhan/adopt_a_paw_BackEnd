package com.example.demo.controllers;

import com.example.demo.models.Organisation;
import com.example.demo.services.OrganisationService;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
//@RequestMapping("/organisation")
@CrossOrigin(origins = "http://localhost:3000")
public class OrganisationController {

    private OrganisationService organisationService;

    public OrganisationController(OrganisationService organisationService){
        this.organisationService = organisationService;
    }


    @GetMapping("findOrganisationByID/{id}")
    public Organisation findOrganisationByID(@PathVariable("id") Long id){

        return organisationService.findOrganisationByID(id);

    }

    @GetMapping("findAllOrganisations")
    public List<Organisation> findAllOrganisations(){
        return organisationService.findAllOrganisations();
    }

    @PutMapping("updateOrganisation/{id}")
    public void addNewOrganisation(@RequestBody Organisation organisationDetails,
                                   @PathVariable("id") Long id){

        Organisation returnOrganisation = organisationService.findOrganisationByID(id);

        organisationService.addnewOrganisation(returnOrganisation, organisationDetails);


    }


}
