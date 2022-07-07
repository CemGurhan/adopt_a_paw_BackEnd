package com.example.demo.BOT.repository;

import com.example.demo.BOT.model.Bot_animalKeyWords;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface Bot_AnimalKeyWordsRepository extends JpaRepository<Bot_animalKeyWords, Long> {



}
