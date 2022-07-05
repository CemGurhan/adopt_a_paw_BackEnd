package com.example.demo.controllers;

import com.example.demo.models.Animal;
import com.example.demo.models.enums.Sex;
import com.example.demo.models.enums.Species;
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

    @GetMapping("/filteranimals")
    public ResponseEntity<List<Animal>> filterAnimals(
            @RequestParam(required = false, name = "name") String name,
            @RequestParam(required = false, name = "minAge", defaultValue = "0") int minAge,
            @RequestParam(required = false, name = "maxAge", defaultValue = "100") int maxAge,
            @RequestParam(required = false, name = "species") Species species,
            @RequestParam(required = false, name = "sex") Sex sex,
            @RequestParam(required = false, name = "location") String location,
            @RequestParam(required = false, name = "Show only available animals", defaultValue = "false") Boolean availableOnly
    ){
        System.out.println("*** species = " + species);
        try{
            return ResponseEntity.ok().body(animalService.returnRelevantAnimals(name, minAge, maxAge, species, sex, location, availableOnly));
        } catch (Exception e){
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, e.getMessage(), e);
        }
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

