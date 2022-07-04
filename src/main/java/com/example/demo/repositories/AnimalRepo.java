package com.example.demo.repositories;

import com.example.demo.models.Animal;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

public interface AnimalRepo extends JpaRepository <Animal, Long> {

    Optional<Animal> findByBreed (String breed);

    @Query(value = "SELECT * FROM animal WHERE breed LIKE %:breed%", nativeQuery = true)
    List<Animal> findByBreedLike(@Param("breed") String breed);


    @Query(value = "select * from animals where lower(name) like lower(?1)", nativeQuery = true)
    List<Animal> findByName(String name);

    @Query(value = "select * from animals where date_of_birth between (?1) and (?2)", nativeQuery = true)
    List<Animal> findByDOBBetween(LocalDate startDate, LocalDate endDate);

    @Query(value = "select * from animals where sex_id = ?1", nativeQuery = true)
    List<Animal> findBySex(Integer sexID);

    @Query(value = "select * from animals where lower(location) like lower(?1)", nativeQuery = true)
    List<Animal> findByLocation(String location);

    @Transactional
    @Modifying
    @Query(value = "UPDATE animals SET customer_id = ?1 WHERE id = ?2 ", nativeQuery = true)
    void addCustomerToAnimal(Long customer_id, Long animal_id);


}
