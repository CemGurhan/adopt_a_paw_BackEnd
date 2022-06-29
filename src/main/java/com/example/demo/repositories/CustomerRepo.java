package com.example.demo.repositories;


import com.example.demo.models.Customer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
public interface CustomerRepo extends JpaRepository<Customer,Long> {

    @Query(value = "SELECT species_id FROM customer_preferences_mapper WHERE customer_id = ?", nativeQuery = true)
    List<String> findCustomerPreferences(Long id);

    @Query(value = "SELECT * FROM customers WHERE id = ?", nativeQuery = true)
    Customer findCustomerByID(Long id);

    @Transactional
    @Modifying
    @Query(value = "DELETE FROM customer_preferences_mapper WHERE customer_id = ?", nativeQuery = true)
    void deleteCustomerPreferences(Long id);


}
