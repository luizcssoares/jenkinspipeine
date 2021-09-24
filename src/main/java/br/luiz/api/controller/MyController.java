package br.luiz.api.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MyController {
     
     @GetMapping("/salvation")
     public String getSalvacao() {
    	 return "Jesus the number 1 ";
     }
}
