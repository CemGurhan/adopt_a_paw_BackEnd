package com.example.demo.controllers;

import com.example.demo.models.Animal;
import com.example.demo.repositories.AnimalRepo;
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


    // CREATE - POST

    // create new animal //
//    @PostMapping("/animal")
//    public ResponseEntity<List<Animal>> postAnimal(@RequestBody Animal animal) {
//        animalRepo.save(animal);
//        return new ResponseEntity<>(animalRepo.findAll(), HttpStatus.CREATED);
//    }
//
//    // READ - GET
//
//    // get all animals //
//    @GetMapping("/animal")
//    public ResponseEntity<List<Animal>> getAllAnimals() {
//        return new ResponseEntity<>(animalRepo.findAll(), HttpStatus.OK);
//    }

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




    // get animal by breed (finding like)

//    @GetMapping("/animal/breed")
//    public ResponseEntity<List<Animal>> findByBreedLike(@RequestParam(required = false, name = "breed") String breed) {
//        if (breed != null) {
//            return new ResponseEntity<>(animalRepo.findByBreedLike(breed), HttpStatus.OK);
//        } else {
//            return new ResponseEntity<>(animalRepo.findAll(), HttpStatus.OK);
//        }
//    }

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
            @RequestParam(required = false) String name,
            @RequestParam(required = false) Integer age,
            @RequestParam(required = false) Integer sexID,
            @RequestParam(required = false) String location,
            @RequestParam(required = false) Integer organisationID,
            @RequestParam(required = false) Integer speciesID,
            @RequestParam(required = false) String breed,
            @RequestParam(required = false) boolean reserved,
            @RequestParam(required = false) boolean adopted
    ){
        try {
            return ResponseEntity.ok().body(animalService.updateAnimal(id, name, age, sexID, location, organisationID, speciesID, breed, reserved, adopted));
        } catch (Exception e){
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, e.getMessage(), e);
        }
    }


    // DELETE

    @DeleteMapping("/{id}")
    public void deleteAnimal(@PathVariable(value = "id") Long id) {
        animalService.deleteAnimal(id);
    }

    @GetMapping("findSpeciesByID/{id}")
    public String findSpeciesByID(@PathVariable("id") Long id){

        return animalService.findSpeciesByID(id);

    }

    @GetMapping("findSexByID/{id}")
    public String findSexByID(@PathVariable("id") Long id){

        return animalService.findSexByID(id);

    }
}

