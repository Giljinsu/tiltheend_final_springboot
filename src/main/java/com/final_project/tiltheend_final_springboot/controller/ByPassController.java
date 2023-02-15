package com.final_project.tiltheend_final_springboot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ByPassController {
    @RequestMapping(value = { "/index", "/shop/shop", "/shop/item_info", "/login/login", "/login/signup",
            "/login/mypage" })
    public void bypass() {
        int i = 1;
    }
}
