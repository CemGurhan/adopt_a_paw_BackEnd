package com.example.demo.registration;

import com.example.demo.appuser.AppUserRole;
import com.example.demo.models.Customer;
import lombok.AllArgsConstructor;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.ToString;

@Getter
@AllArgsConstructor
@EqualsAndHashCode
@ToString
public class RegistrationRequest {


    private final String firstName;
    private final String lastName;
    private final String email;
    private final String password;
    private final AppUserRole appUserRole;
    private final Long customer_id;



}
