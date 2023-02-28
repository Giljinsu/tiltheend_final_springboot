package com.final_project.tiltheend_final_springboot.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.final_project.tiltheend_final_springboot.service.LoginService;

@Controller
@RequestMapping("/login")
public class LoginController {

  @Autowired
  LoginService loginService;

  @PostMapping("/login")
  public ModelAndView login(@RequestParam Map<String, Object> params, ModelAndView modelAndView) {
    String viewName;
    if (loginService.userIsAuthenticated(params)) {
      viewName = "/login/mypage";
    } else {
      String login = "fail";
      modelAndView.addObject("login", login);
      viewName = "/login/login";
    }

    // Object pw = loginService.getUserPw(params);
    modelAndView.setViewName(viewName);
    return modelAndView;
  }
}
