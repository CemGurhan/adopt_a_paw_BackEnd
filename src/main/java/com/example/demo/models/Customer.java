package com.example.demo.models;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import javax.persistence.*;
import java.util.ArrayList;
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

    private int age;

    private String location;

    @Column(name = "previous_adoptions" , columnDefinition = "boolean default false")
    private Boolean previousAdoptions;

    @JsonIgnoreProperties({"customer"})
    @OneToMany(mappedBy = "customer", cascade = CascadeType.ALL)
    private List<Application> application;


    @JsonIgnoreProperties({"customer"})
    @OneToMany(mappedBy = "customer", cascade = CascadeType.ALL)
    private List<CustomerPreferredSpecies> customerPreferredSpecies;




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

    public List<CustomerPreferredSpecies> getPreferredSpecies() {
        return customerPreferredSpecies;
    }

    public void setPreferredSpecies(List<CustomerPreferredSpecies> customerPreferredSpecies) {
        this.customerPreferredSpecies = customerPreferredSpecies;
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

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
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
