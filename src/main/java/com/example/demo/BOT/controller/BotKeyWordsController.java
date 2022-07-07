package com.example.demo.BOT.controller;

import com.example.demo.BOT.model.BotKeyWords;
import com.example.demo.BOT.service.BotKeyWordsService;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/bot")
@AllArgsConstructor
public class BotKeyWordsController {

    private BotKeyWordsService botKeyWordsService;

    @GetMapping("/getAllBotKeyWords")
    public List<BotKeyWords> getAllBotKeyWords(){

        return botKeyWordsService.findAllBotKeyWords();


    }
}
