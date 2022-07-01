package com.example.demo.models;

import com.example.demo.models.enums.Species;
import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;
import java.util.List;

@Entity
public class SpeciesTable {

    @Id
    @Column(name = "id", nullable = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @JsonIgnore
    @ManyToMany(mappedBy = "species")
//    @JoinColumn(name = "customer_id")
    private List<Customer> customer;

    @Column
    @Enumerated(EnumType.STRING)
    private Species species;



    public SpeciesTable() {
    }

    public SpeciesTable(Long id, Species species) {
        this.id = id;

        this.species = species;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public List<Customer> getCustomer() {
        return customer;
    }

    public void setCustomer(List<Customer> customer) {
        this.customer = customer;
    }

    public Species getSpecies() {
        return species;
    }

    public void setSpecies(Species species) {
        this.species = species;
    }
}

