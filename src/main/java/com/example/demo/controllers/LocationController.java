package com.example.demo.controllers;

import com.example.demo.models.Location;
import com.example.demo.services.LocationService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/locations")
public class LocationController {

    private LocationService locationService;

    public LocationController(LocationService locationService){

        this.locationService = locationService;

    }

    @GetMapping("/findAllLocations")
    public ResponseEntity<List<Location>> findAllLocations(){

        return ResponseEntity.ok(locationService.findAllLocations());

    }

    @GetMapping("/findLocationById/{location_id}")
    public ResponseEntity<Location> findLocationById(@PathVariable("location_id") Long location_id){

        return ResponseEntity.ok(locationService.findLocationById(location_id));


    }

    @PostMapping("/addNewLocation/{organisation_id}")
    public ResponseEntity<Location> addNewLocation(@RequestBody Location location,
                                                   @PathVariable("organisation_id") Long organisation_id){

        return ResponseEntity.ok(locationService.addNewLocation(location, organisation_id));


    }

    @PutMapping("/updateLocation/{location_id}")
    public ResponseEntity<Location> updateLocation(@PathVariable("location_id") Long location_id,
                                                   @RequestBody Location locationDetails){

        return ResponseEntity.ok(locationService.updateLocation(location_id, locationDetails));

    }

    @PutMapping("/updateLocationsOrganisation_id/{location_id}/{organisation_id}")
    public ResponseEntity<Location> updateLocationsOrganisation_id(@PathVariable("location_id") Long location_id,
                                                                   @PathVariable("organisation_id") Long organisation_id){


        return ResponseEntity.ok(locationService.updateLocationsOrganisation_id(location_id,organisation_id));


    }

}
