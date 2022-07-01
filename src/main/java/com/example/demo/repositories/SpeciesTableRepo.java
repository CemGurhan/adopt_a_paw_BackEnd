package com.example.demo.repositories;

import com.example.demo.models.SpeciesTable;
import com.example.demo.models.enums.Species;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
public interface SpeciesTableRepo extends JpaRepository<SpeciesTable, Long> {

    Species findBySpeciesEquals(String species);

    @Transactional
    @Modifying
    @Query(value = "INSERT INTO species_table (species) VALUES (?)", nativeQuery = true)
    void addToSpeciesTable(String species);

    @Query(value = "SELECT id FROM species_table WHERE species = ?", nativeQuery = true)
    Long findSpeciesID(String species);


}
