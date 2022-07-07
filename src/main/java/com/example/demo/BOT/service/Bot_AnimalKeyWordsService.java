package com.example.demo.BOT.service;

import com.example.demo.BOT.model.Bot_animalKeyWords;
import com.example.demo.BOT.repository.Bot_AnimalKeyWordsRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@Service
@AllArgsConstructor
public class Bot_AnimalKeyWordsService {

    private Bot_AnimalKeyWordsRepository bot_animalKeyWordsRepository;

    public List<Bot_animalKeyWords> getAllAnimalKeyWords(){

        return bot_animalKeyWordsRepository.findAll();


    }


}
