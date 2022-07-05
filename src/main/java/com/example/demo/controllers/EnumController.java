package com.example.demo.controllers;

import com.example.demo.models.enums.Sex;
import com.example.demo.models.enums.Species;
import com.example.demo.services.EnumService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/enums")
@CrossOrigin(origins = "http://localhost:3000")
public class EnumController {

    @Autowired
    private EnumService enumService;

    public EnumController(EnumService enumService) {
        this.enumService = enumService;
    }

    @GetMapping("/getAllSexes")
    public ResponseEntity<List<Sex>> getAllSexes(){
        return ResponseEntity.ok(enumService.getAllSexes());
    }

    @GetMapping("/getAllSpecies")
    public ResponseEntity<List<Species>> getAllSpecies(){
        return ResponseEntity.ok().body(enumService.getAllSpecies());
    }
}