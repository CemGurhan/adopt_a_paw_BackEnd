package com.example.demo.models;

import com.example.demo.models.enums.AvailableStatus;
import com.example.demo.models.enums.Sex;
import com.example.demo.models.enums.Species;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import javax.persistence.*;
import java.time.LocalDate;
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

    @Column(name = "date_of_birth", columnDefinition = "DATE")
    private LocalDate dateOfBirth;

    @Column
    @Enumerated(EnumType.ORDINAL)
    private Sex sex;

//    @Column(name = "sex_id")
//    private Integer sex_id;

    @Column(name = "location")
    private String location;

    @ManyToOne
    @JoinColumn(name = "organisation_id")
    Organisation organisation;

//    @Column(name = "species_id")
//    private Integer species_id;
    @Column
    @Enumerated(EnumType.STRING)
    private Species species;

    @Column(name="breed", columnDefinition = "varchar(255) default 'UNKNOWN'")
    private String breed;

    @Column
    @Enumerated(EnumType.STRING)
    private AvailableStatus availableStatus;

    @Column
    private String photoUrl;

//    @Column(name = "reserved" , columnDefinition = "boolean default false")
//    private boolean reserved;
//
//    @Column(name = "adopted" , columnDefinition = "boolean default false")
//    private boolean adopted;


    @JsonIgnoreProperties({"animal"})
    @OneToMany(mappedBy = "animal", cascade = CascadeType.ALL)
    private List<Application> applications;

    @ManyToOne
    @JoinColumn(name = "customer_id")
    private Customer customer;


    // no arg constructor

    public Animal() {
    }

    // arg constructor


    public Animal(String name, LocalDate dateOfBirth, Sex sex, String location, Species species, String breed, AvailableStatus availableStatus, String photoUrl) {
        this.name = name;
        this.dateOfBirth = dateOfBirth;
        this.sex = sex;
        this.location = location;
        this.species = species;
        this.breed = breed;
        this.availableStatus = availableStatus;
        this.photoUrl = photoUrl;
    }

    @JsonIgnore
    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
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

    public LocalDate getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(LocalDate dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
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

    public Organisation getOrganisation() {
        return organisation;
    }

    public void setOrganisation(Organisation organisation) {
        this.organisation = organisation;
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

//    @JsonIgnore
    public List<Application> getApplications() {
        return applications;
    }

    public void setApplications(List<Application> application) {
        this.applications = applications;
    }

    public String getPhotoUrl() {
        return photoUrl;
    }

    public void setPhotoUrl(String photoUrl) {
        this.photoUrl = photoUrl;
    }
}
