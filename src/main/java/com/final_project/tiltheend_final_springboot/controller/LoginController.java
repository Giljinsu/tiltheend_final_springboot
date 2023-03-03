package com.final_project.tiltheend_final_springboot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.final_project.tiltheend_final_springboot.service.LoginService;

@Controller
@RequestMapping("/login")
public class LoginController {
    @Autowired
    LoginService loginService;
}
