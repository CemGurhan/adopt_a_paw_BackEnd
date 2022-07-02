package com.example.demo.models;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "customers")
public class Customer {
    @Id
    @Column(name = "id", nullable = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "first_name")
    private String firstName;

    @Column(name = "last_name")
    private String lastName;

    private Integer age;

    private String location;

    @Column(name = "previous_adoptions" , columnDefinition = "boolean default false")
    private Boolean previousAdoptions;

    @JsonIgnoreProperties({"customer"})
    @OneToMany(mappedBy = "customer", cascade = CascadeType.ALL)
    private List<Application> application;

    @ManyToMany(cascade = CascadeType.ALL)
    @JsonIgnore
    @JoinTable(
            name="customer_preferred_species",
            joinColumns = @JoinColumn(name = "customer_id"),
            inverseJoinColumns = @JoinColumn(name="species_id") // get id from inverse entity in relationship (speciesTable)
    )
    private List<SpeciesTable> species;




    public Customer (){
    }

    public Customer(Long id, String firstName, String lastName, int age, String location, Boolean previousAdoptions) {
        this.id = id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.age = age;
        this.location = location;
        this.previousAdoptions = previousAdoptions;

    }


    public List<Application> getApplication() {
        return application;
    }

    public void setApplication(List<Application> application) {
        this.application = application;
    }

    public List<SpeciesTable> getCustomerPreferredSpecies() {
        return species;
    }

    public void setCustomerPreferredSpecies(List<SpeciesTable> species) {
        this.species = species;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public Boolean getPreviousAdoptions() {
        return previousAdoptions;
    }

    public void setPreviousAdoptions(Boolean previousAdoptions) {
        this.previousAdoptions = previousAdoptions;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }


}
