package com.example.demo.services;

import com.example.demo.models.enums.Species;
import com.example.demo.repositories.SpeciesTableRepo;
import org.springframework.stereotype.Service;

import java.util.Arrays;
import java.util.List;

@Service
public class SpeciesTableService {

    private SpeciesTableRepo speciesTableRepo;

    public SpeciesTableService(SpeciesTableRepo speciesTableRepo) {
        this.speciesTableRepo = speciesTableRepo;
    }

    public List<Species> getAllSpecies(){
        return Arrays.stream(Species.values()).toList();
    }
}
