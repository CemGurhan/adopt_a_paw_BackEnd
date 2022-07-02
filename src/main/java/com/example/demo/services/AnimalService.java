package com.example.demo.services;


import com.example.demo.exception.BadRequestException;
import com.example.demo.models.Animal;
import com.example.demo.repositories.AnimalRepo;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Objects;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class AnimalService {


    private AnimalRepo animalRepo;

    public AnimalService(AnimalRepo animalRepo){
        this.animalRepo = animalRepo;
    }

    public List<Animal> getAllAnimals(){

        return animalRepo.findAll();
    }
    public Optional<Animal> findByID(Long id){
        return animalRepo.findById(id);
    }

    // UPDATE ANIMAL METHOD
    public ResponseEntity<Animal> updateAnimal(Long animal_id, Animal animalDetails) {

        if(animalRepo.findById(animal_id).isPresent()){
            Animal updatedAnimal = animalRepo.findById(animal_id).get();

            if (animalDetails.getAge() != null) updatedAnimal.setAge(animalDetails.getAge());
            if (animalDetails.getAvailableStatus() != null) updatedAnimal.setAvailableStatus(animalDetails.getAvailableStatus());
            if (animalDetails.getBreed() != null)  updatedAnimal.setBreed(animalDetails.getBreed());
            if(animalDetails.getLocation() != null) updatedAnimal.setLocation(animalDetails.getLocation());
            if (animalDetails.getName() != null)  updatedAnimal.setName(animalDetails.getName());
            if(animalDetails.getOrganisation_id() != null) updatedAnimal.setAge(animalDetails.getAge());
            if(animalDetails.getSex() != null) updatedAnimal.setSex(animalDetails.getSex());
            if(animalDetails.getSpecies() != null) updatedAnimal.setSpecies(animalDetails.getSpecies());


            animalRepo.save(updatedAnimal);

            return ResponseEntity.ok(updatedAnimal);


        }else{
            throw new BadRequestException("Invalid animal_id");
        }

    }



    // DELETE ANIMAL METHOD
    public ResponseEntity<String> deleteAnimal(Long id) {

        if(animalRepo.findById(id).isEmpty()){
            throw new BadRequestException("Invalid animal_id");
        }else{
            animalRepo.delete(animalRepo.findById(id).get());
            return ResponseEntity.ok("Animal with id " + id + " deleted");
        }


    }

    public List<Animal> returnRelevantAnimals(String name, int minAge, int maxAge, Integer sexID, String location, Boolean availableOnly) throws Exception{

        if (minAge > maxAge){
            throw new Exception("Max age must be lower than min age!");
        }

        List<Animal> result = animalRepo.findByAgeGreaterThanEqualAndAgeLessThanEqual(minAge, maxAge);

        if (name != null){
            List<Animal> byName = animalRepo.findByName(name);
            result = result.stream().filter(byName::contains).collect(Collectors.toList());
        }

        if (sexID != null){
            List<Animal> bySex = animalRepo.findBySex(sexID);
            result = result.stream().filter(bySex::contains).collect(Collectors.toList());
        }
        if (location != null){
            List<Animal> byLocation = animalRepo.findByLocation(location);
            result = result.stream().filter(byLocation::contains).collect(Collectors.toList());
        }
//        if (availableOnly){
//            List<Animal> byAvailable = animalRepo.findByReservedFalse();
//            result = result.stream().filter(byAvailable::contains).collect(Collectors.toList());
//        }
        return result;
    }


}
