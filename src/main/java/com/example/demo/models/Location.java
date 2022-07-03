package com.example.demo.models;

import javax.persistence.*;

@Entity
@Table(name = "locations")
public class Location {

    @Id
    @Column(name = "id", nullable = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String country;

    private String city;

    private String address;

    private String postcode;

    @ManyToOne
    @JoinColumn(name = "organisation_id")
    private Organisation organisation;

    public Location() {
    }

    public Location(Long id, String country, String city, String address, String postcode, Organisation organisation) {
        this.id = id;
        this.country = country;
        this.city = city;
        this.address = address;
        this.postcode = postcode;
        this.organisation = organisation;
    }

    public String getPostcode() {
        return postcode;
    }

    public void setPostcode(String postcode) {
        this.postcode = postcode;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Organisation getOrganisation() {
        return organisation;
    }

    public void setOrganisation(Organisation organisation) {
        this.organisation = organisation;
    }
}
