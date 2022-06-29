package com.example.demo.controllers;

import com.example.demo.models.Organisation;
import org.springframework.web.bind.annotation.*;

@RestController
//@RequestMapping("/organisation")
@CrossOrigin(origins = "http://localhost:3000")
public class OrganisationController {


    @GetMapping("findOrganisationByID/{id}")
    public Organisation findOrganisationByID(@PathVariable("id") Long id){




    }

}
