package com.example.demo.BOT.controller;

import com.example.demo.BOT.model.Bot_animalKeyWords;
import com.example.demo.BOT.service.Bot_AnimalKeyWordsService;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@AllArgsConstructor
@RequestMapping("/animalKeyWords")
public class Bot_AnimalKeyWordsController {

    private Bot_AnimalKeyWordsService bot_animalKeyWordsService;

    @GetMapping("/getAllAnimalKeyWords")
    public List<Bot_animalKeyWords> getAllAnimalKeyWords(){

        return bot_animalKeyWordsService.getAllAnimalKeyWords();



    }
}
