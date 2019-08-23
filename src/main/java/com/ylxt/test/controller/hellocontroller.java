package com.ylxt.test.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class hellocontroller {


    @RequestMapping(value = "docker")
    @ResponseBody
    public String hellodocker(){
        return "hello docker111123";
    }
}
