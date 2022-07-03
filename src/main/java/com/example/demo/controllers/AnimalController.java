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



    @GetMapping("/getAllAnimals")
    public ResponseEntity<List<Animal>> getAllAnimals() {
        return ResponseEntity.ok(animalService.getAllAnimals());
    }




    @GetMapping("/findAnimalById/{id}")
    public ResponseEntity<Animal> findByID(@PathVariable Long animal_id){


       return ResponseEntity.ok(animalService.findByID(animal_id).get());
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
    public ResponseEntity<Animal> deleteAnimal(@PathVariable(value = "id") Long id) {
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

