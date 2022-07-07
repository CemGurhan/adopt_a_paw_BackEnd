package com.example.demo.BOT.repository;

import com.example.demo.BOT.model.BotKeyWords;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BotKeyWordsRepository extends JpaRepository<BotKeyWords,Long> {
}
