package com.example.demo.controllers;

import com.example.demo.models.enums.Species;
import com.example.demo.services.SpeciesTableService;
import org.apache.coyote.Response;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/species")
@CrossOrigin(origins = "http://localhost:3000")
public class SpeciesTableController {

    @Autowired
    private SpeciesTableService speciesTableService;

    public SpeciesTableController(SpeciesTableService speciesTableService) {
        this.speciesTableService = speciesTableService;
    }

    @GetMapping("/getAll")
    public ResponseEntity<List<Species>> getAllSpecies(){
        return ResponseEntity.ok().body(speciesTableService.getAllSpecies());
    }
}
