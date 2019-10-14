package com.ferret56.javajooqsample.controllers;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/app")
public class HelloController {
   @RequestMapping("/hello")
    public String index(){
        return "Hello from Spring Boot!";
    }
}
