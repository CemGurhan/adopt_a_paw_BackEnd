package com.example.demo.BOT.service;

import com.example.demo.BOT.model.BotKeyWords;
import com.example.demo.BOT.repository.BotKeyWordsRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@AllArgsConstructor
public class BotKeyWordsService {

    private BotKeyWordsRepository botKeyWordsRepository;

    public List<BotKeyWords> findAllBotKeyWords(){

        return botKeyWordsRepository.findAll();


    }
}
