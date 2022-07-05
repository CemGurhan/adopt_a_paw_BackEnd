package com.example.demo.models;


import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "organisations")
public class Organisation {

    @Id
    @Column(name = "id", nullable = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "name")
    private String name;

    private String email;

    private String phone;
    private String slogan;

    private String logo_url;




    @JsonIgnoreProperties({"organisation"})
    @OneToMany(mappedBy = "organisation", cascade = CascadeType.ALL)
    private List<Animal> animals;

    @JsonIgnoreProperties({"organisation"})
    @OneToMany(mappedBy = "organisation", cascade = CascadeType.ALL)
    private List<Location> locations;



    public Organisation() {
    }

    public Organisation(Long id, String name, String email, String phone, String slogan, String logo_url) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.phone = phone;
        this.slogan = slogan;
        this.logo_url = logo_url;


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

    public String getSlogan() {
        return slogan;
    }

    public void setSlogan(String slogan) {
        this.slogan = slogan;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getLogo_url() {
        return logo_url;
    }

    public void setLogo_url(String logo_url) {
        this.logo_url = logo_url;
    }

    public List<Animal> getAnimals() {
        return animals;
    }

    public void setAnimals(List<Animal> animals) {
        this.animals = animals;
    }

    public List<Location> getLocations() {
        return locations;
    }

    public void setLocations(List<Location> locations) {
        this.locations = locations;
    }
}
