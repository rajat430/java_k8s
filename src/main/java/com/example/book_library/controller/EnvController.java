package com.example.book_library.controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class EnvController {

    @Value("${app.environment}")
    private String environment;

    @GetMapping("/env")
    public String getEnvironment() {
        System.out.println("You hit");
        return environment;
    }
}

