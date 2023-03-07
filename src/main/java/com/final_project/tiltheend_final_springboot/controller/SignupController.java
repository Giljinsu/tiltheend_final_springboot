package com.final_project.tiltheend_final_springboot.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.final_project.tiltheend_final_springboot.service.ShopService;

@Controller
@RequestMapping("/login")
public class SignupController {

  @Autowired
  ShopService shopService;

  @PostMapping("/signup")
  public ModelAndView signup(@RequestParam Map<String, String> params, ModelAndView modelAndView) {
    // 여기에서부터 다시 진행해야함.

    return modelAndView;
  }
}
