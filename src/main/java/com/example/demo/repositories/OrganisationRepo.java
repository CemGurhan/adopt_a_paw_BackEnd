package com.example.demo.repositories;

import com.example.demo.models.Organisation;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface OrganisationRepo extends JpaRepository<Organisation,Long> {

    @Query(value = "SELECT * FROM organisations WHERE id = ?",nativeQuery = true)
    Organisation findOrganisationByID(Long id);

}
