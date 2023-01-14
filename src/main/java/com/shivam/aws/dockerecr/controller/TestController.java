package com.shivam.aws.dockerecr.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestController {

    @GetMapping("/ping")
    public String get(){
        return "Sample Response at timestamp : " + System.currentTimeMillis();
    }
}
