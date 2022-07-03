package com.example.demo.controllers;

import com.example.demo.models.Animal;
import com.example.demo.services.AnimalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/animal")
@CrossOrigin(origins = "http://localhost:3000")
public class AnimalController {

    @Autowired
    private AnimalService animalService;

    public AnimalController (AnimalService animalService) {
        this.animalService = animalService;
    }



    @GetMapping("/animal")
    public ResponseEntity<List<Animal>> getAllAnimals() {
        return new ResponseEntity<>(animalService.getAllAnimals(), HttpStatus.OK);
    }

    @GetMapping("/filteranimals")
    public ResponseEntity<List<Animal>> filterAnimals(
            @RequestParam(required = false, name = "name") String name,
            @RequestParam(required = false, name = "min age", defaultValue = "0") int minAge,
            @RequestParam(required = false, name = "max age", defaultValue = "100") int maxAge,
            @RequestParam(required = false, name = "sex") Integer sexID,
            @RequestParam(required = false, name = "location") String location,
            @RequestParam(required = false, name = "Show only available animals", defaultValue = "false") Boolean availableOnly
    ){
        try{
            return ResponseEntity.ok().body(animalService.returnRelevantAnimals(name, minAge, maxAge, sexID, location, availableOnly));
        } catch (Exception e){
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, e.getMessage(), e);
        }
    }



    @GetMapping("/{id}")
    public ResponseEntity findByID(@PathVariable Long id){
        Optional<Animal> animalOptional = animalService.findByID(id);
        if (animalOptional.isPresent()){
            return ResponseEntity.ok().body(animalOptional.get());
        }
        return ResponseEntity.notFound().build();
    }

    // UPDATE - PUT
    @PutMapping("/{id}")
    public ResponseEntity<Animal> updateAnimal(
            @PathVariable("id") Long id,
            @RequestBody Animal animal
    ){

        return animalService.updateAnimal(id,animal);

    }


    // DELETE

    @DeleteMapping("/{id}")
    public ResponseEntity<String> deleteAnimal(@PathVariable(value = "id") Long id) {
        return animalService.deleteAnimal(id);
    }



    // ANIMAL PHOTOS

    @GetMapping("/{id}/photourl")
    public ResponseEntity findPhotoUrlByID(@PathVariable Long id){
        Optional<Animal> animalOptional = animalService.findByID(id);
        if (animalOptional.isPresent()){
            return ResponseEntity.ok().body(animalOptional.get().getPhotoUrl());
        }
        return ResponseEntity.notFound().build();
    }


}

