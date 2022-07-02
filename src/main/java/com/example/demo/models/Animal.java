package com.example.demo.models;

import com.example.demo.models.enums.AvailableStatus;
import com.example.demo.models.enums.Sex;
import com.example.demo.models.enums.Species;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "animals")
public class Animal {

    @Id
    @Column(name = "id", nullable = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "name")
    private String name;

    @Column(name = "age")
    private Integer age;

    @Column
    @Enumerated(EnumType.ORDINAL)
    private Sex sex;

//    @Column(name = "sex_id")
//    private Integer sex_id;

    @Column(name = "location")
    private String location;

    @Column(name = "organisation_id")
    private Integer organisation_id;

//    @Column(name = "species_id")
//    private Integer species_id;
    @Column
    @Enumerated(EnumType.STRING)
    private Species species;

    @Column(name="breed", columnDefinition = "varchar(255) default 'UNKNOWN'")
    private String breed;

    @Column
    @Enumerated(EnumType.ORDINAL)
    private AvailableStatus availableStatus;

//    @Column(name = "reserved" , columnDefinition = "boolean default false")
//    private boolean reserved;
//
//    @Column(name = "adopted" , columnDefinition = "boolean default false")
//    private boolean adopted;

    @JsonIgnoreProperties({"animal"})
    @OneToMany(mappedBy = "animal", cascade = CascadeType.ALL)
    private List<Application> application;

    // no arg constructor

    public Animal() {
    }

    // arg constructor
    public Animal (Long id, String name, Species species, Integer age, String breed, Sex sex, String location, Integer organisation_id, AvailableStatus availableStatus) {
        this.id = id;
        this.name = name;
        this.species = species;
        this.age = age;
        this.breed = breed;
        this.sex = sex;
        this.location = location;
        this.organisation_id = organisation_id;
        this.availableStatus = availableStatus;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public Sex getSex() {
        return sex;
    }

    public void setSex(Sex sex) {
        this.sex = sex;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public AvailableStatus getAvailableStatus() {
        return availableStatus;
    }

    public void setAvailableStatus(AvailableStatus availableStatus) {
        this.availableStatus = availableStatus;
    }

    public Integer getOrganisation_id() {
        return organisation_id;
    }

    public void setOrganisation_id(Integer organisation_id) {
        this.organisation_id = organisation_id;
    }

    public Species getSpecies() {
        return species;
    }

    public void setSpecies(Species species) {
        this.species = species;
    }

    public String getBreed() {
        return breed;
    }

    public void setBreed(String breed) {
        this.breed = breed;
    }

    public List<Application> getApplication() {
        return application;
    }

    public void setApplication(List<Application> application) {
        this.application = application;
    }

}
