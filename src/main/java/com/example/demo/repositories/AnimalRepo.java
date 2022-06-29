package com.example.demo.repositories;

import com.example.demo.models.Animal;
import com.example.demo.models.SexEnums;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import javax.swing.text.html.Option;
import java.util.List;
import java.util.Optional;

public interface AnimalRepo extends JpaRepository <Animal, Long> {

    Optional<Animal> findByBreed (String breed);

    @Query(value = "SELECT * FROM animal WHERE breed LIKE %:breed%", nativeQuery = true)
    List<Animal> findByBreedLike(@Param("breed") String breed);

    @Query(value = "SELECT species FROM animal_types WHERE id=?", nativeQuery = true)
    String findSpeciesByID(Long id);

    @Query(value = "SELECT sex FROM sex_enums WHERE id=?", nativeQuery = true)
    String findSexByID(Long id);

    @Query(value = "SELECT id , sex  FROM sex_enums",nativeQuery = true)
    List<SexEnums> findAllSexEnums();

    @Query(value = "select * from animals where lower(name) like lower(?1)", nativeQuery = true)
    List<Animal> findByName(String name);

    List<Animal> findByAgeGreaterThanEqualAndAgeLessThanEqual(int minAge, int maxAge);

    @Query(value = "select * from animals where sex_id = ?1", nativeQuery = true)
    List<Animal> findBySex(Long sexID);

    @Query(value = "select * from animals where lower(location) like lower(?1)", nativeQuery = true)
    List<Animal> findByLocation(String location);

    List<Animal> findByReservedFalse();




    List<Animal> findByAdoptedIs(Boolean adopted);
}
