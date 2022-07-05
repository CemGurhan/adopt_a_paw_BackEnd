package com.example.demo.services;

import com.example.demo.models.enums.Sex;
import com.example.demo.models.enums.Species;
import org.springframework.stereotype.Service;

import java.util.Arrays;
import java.util.List;

@Service
public class EnumService {

    public List<Sex> getAllSexes(){
        return Arrays.stream(Sex.values()).toList();
    }

    public List<Species> getAllSpecies(){ return Arrays.stream(Species.values()).toList(); }
}
