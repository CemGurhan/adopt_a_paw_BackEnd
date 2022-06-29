package com.example.demo.services;


import com.example.demo.models.Animal;
import com.example.demo.models.SexEnums;
import com.example.demo.repositories.AnimalRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
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



    // UPDATE ANIMAL METHOD
    public Animal updateAnimal(
            Long id,
            String name,
            Integer age,
            Integer sexID,
            String location,
            Integer organisationID,
            Integer speciesID,
            String breed,
            boolean reserved,
            boolean adopted
    ) {
        Animal animal = animalRepo.findById(id).orElseThrow(() -> new IllegalStateException("Animal with " + id + " does not exist!"));
        if (animal.getName() != null && !Objects.equals(animal.getName(), name)) {
            animal.setName(name);
        }
        if (animal.getSpecies_id() != null && !Objects.equals(animal.getSpecies_id(), speciesID)) {
            animal.setSpecies_id(speciesID);
        }

        if (animal.getBreed() != null && !Objects.equals(animal.getBreed(), breed)) {
            animal.setBreed(breed);
        }

        if (animal.getLocation() != null && !Objects.equals(animal.getLocation(), location)) {
            animal.setLocation(location);
        }

        if (animal.getOrganisation_id() != null && !Objects.equals(animal.getOrganisation_id(), name)) {
            animal.setOrganisation_id(organisationID);
        }

        return animal;
    }

    public List<Animal> getAllAnimals(){
        return animalRepo.findAll();
    }

    // DELETE ANIMAL METHOD
    public void deleteAnimal(Long id) {
        boolean exists = animalRepo.existsById(id);
        if (!exists) {
            throw new IllegalStateException(
                    "Animal with id: " + id + " does not exist!");
        }
        animalRepo.deleteById(id);
    }

    public List<Animal> returnRelevantAnimals(String name, int minAge, int maxAge, Long sexID, String location, Boolean availableOnly) throws Exception{

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
        if (availableOnly){
            List<Animal> byAvailable = animalRepo.findByReservedFalse();
            result = result.stream().filter(byAvailable::contains).collect(Collectors.toList());
        }
        return result;
    }

    public String findSpeciesByID(Long id){
        return animalRepo.findSpeciesByID(id);
    }

    public String findSexByID(Long id){
        return animalRepo.findSexByID(id);
    }

    public List<SexEnums> returnAllSexEnums(){

        return animalRepo.findAllSexEnums();



    }


    public Optional<Animal> findByID(Long id){
        return animalRepo.findById(id);
    }
}
