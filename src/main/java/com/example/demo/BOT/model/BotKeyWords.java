package com.example.demo.BOT.model;

import com.example.demo.BOT.enums.KeyWordOperation;
import com.example.demo.BOT.enums.KeyWordTypes;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.util.List;

@Entity
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class BotKeyWords {

    @Id
    @Column(name = "id", nullable = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String keyWord;

    @Enumerated(EnumType.STRING)
    private KeyWordTypes keyWordType;

    @Enumerated(EnumType.STRING)
    private KeyWordOperation keyWordOperation;

    @JsonIgnoreProperties({"botKeyWords"})
    @OneToMany(mappedBy = "botKeyWords", cascade = CascadeType.ALL)
    List<Bot_animalKeyWords> bot_animalKeyWords;




}
