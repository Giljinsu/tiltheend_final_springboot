package com.final_project.tiltheend_final_springboot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ByPassController {
    @RequestMapping(value = {"/**"})
    public void bypass() {
        int i = 1;
    }
}
