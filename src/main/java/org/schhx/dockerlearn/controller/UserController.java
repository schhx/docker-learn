package org.schhx.dockerlearn.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class UserController {

    @RequestMapping("/hello")
    public String sayHello(String name){
        return "Hello, " + name + "!";
    }

}
