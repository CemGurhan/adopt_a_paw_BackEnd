package com.example.demo.services;

import com.example.demo.exception.BadRequestException;
import com.example.demo.models.Location;
import com.example.demo.models.Organisation;
import com.example.demo.repositories.LocationRepo;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LocationService {

    private LocationRepo locationRepo;

    private OrganisationService organisationService;

    public LocationService(LocationRepo locationRepo, OrganisationService organisationService) {
        this.locationRepo = locationRepo;
        this.organisationService = organisationService;
    }

    public List<Location> findAllLocations(){

        return locationRepo.findAll();

    }


    public Location findLocationById(Long location_id){

        if(locationRepo.findById(location_id).isPresent()){

            return locationRepo.findById(location_id).get();
        }else{

            throw new BadRequestException("Invalid location id");
        }

    }

    public Location addNewLocation(Location location, Long organisation_id){

        if(organisationService.findOrganisationByID(organisation_id) != null){
            location.setOrganisation(organisationService.findOrganisationByID(organisation_id));
        }else{
            throw new BadRequestException("Invalid organisation_id");
        }

        locationRepo.save(location);

        return location;


    }


    public Location updateLocation(Long location_id, Location locationDetails){

        if(locationRepo.findById(location_id).isPresent()){

            Location returnLocation = locationRepo.findById(location_id).get();

            if(locationDetails.getAddress() != null) returnLocation.setAddress(locationDetails.getAddress());
            if(locationDetails.getCity() != null) returnLocation.setCity(locationDetails.getCity());
            if(locationDetails.getCountry() != null) returnLocation.setCountry(locationDetails.getCountry());
            if(locationDetails.getPostcode() != null) returnLocation.setPostcode(locationDetails.getPostcode());


            locationRepo.save(returnLocation);

            return returnLocation;


        }else{
            throw new BadRequestException("Invalid location_id");
        }

    }


    public Location updateLocationsOrganisation_id(Long location_id, Long organisation_id){

        if(organisationService.findOrganisationByID(organisation_id) == null
        && locationRepo.findById(location_id).isEmpty()){
            throw new BadRequestException("Both location_id and organisation_id are invalid");
        }

        if(organisationService.findOrganisationByID(organisation_id) == null){
            throw new BadRequestException("Invalid organisation_id");
        }

        if(locationRepo.findById(location_id).isEmpty()){
            throw new BadRequestException("Invalid location_id");
        }

        Location returnLocation = locationRepo.findById(location_id).get();

        returnLocation.setOrganisation(organisationService.findOrganisationByID(organisation_id));

        locationRepo.save(returnLocation);

        return returnLocation;


    }



}
