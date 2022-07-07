package com.example.demo.appuser;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(path = "/AppUser")
@AllArgsConstructor
class AppUserController {
    
    private AppUserService appUserService;

    @GetMapping("/findUserBy_email_password")
    public AppUser findUserBy_email_password(@RequestParam String email,
                                            @RequestParam String password){

        return appUserService.findUserBy_email_password(email,password);


    }


}
