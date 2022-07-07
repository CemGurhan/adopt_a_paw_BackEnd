package com.example.demo.BOT.model;


import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;

@Entity
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class Bot_animalKeyWords {

    @Id
    @Column(name = "id", nullable = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String keyWord;


    @ManyToOne
    @JoinColumn(name = "bot_key_word_id")
    private BotKeyWords botKeyWords;
}
