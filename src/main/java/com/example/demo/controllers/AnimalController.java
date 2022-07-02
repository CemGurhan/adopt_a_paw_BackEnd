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




    @GetMapping("/findAnimalById/{animal_id}")
    public ResponseEntity<Animal> findByID(@PathVariable("animal_id") Long animal_id){


       return ResponseEntity.ok(animalService.findByID(animal_id).get());
    }

    // UPDATE - PUT
    @PutMapping("/updateAnimal/{animal_id}")
    public ResponseEntity<Animal> updateAnimal(
            @PathVariable("animal_id") Long id,
            @RequestBody Animal animal
    ){

        return animalService.updateAnimal(id,animal);

    }


    // DELETE

    @DeleteMapping("/deleteAnimal/{id}")
    public ResponseEntity<HttpStatus> deleteAnimal(@PathVariable(value = "id") Long id) {
        return animalService.deleteAnimal(id);
    }

    @PostMapping("/addNewAnimal")
    public ResponseEntity<Animal> addNewAnimal(@RequestBody Animal animal){
        return animalService.addNewAnimal(animal);
    }


}

