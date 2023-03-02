package com.final_project.tiltheend_final_springboot.controller;


import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.final_project.tiltheend_final_springboot.service.OrderListService;
import com.final_project.tiltheend_final_springboot.service.UserService;

@Controller
@RequestMapping(value = "/myPage")
public class MyPageController {

    @Autowired
    UserService userService;

    @Autowired
    OrderListService orderListService;

    @RequestMapping(value = "/purchaselist", method=RequestMethod.POST)
    public ModelAndView list(ModelAndView modelAndView, @RequestParam Map<String, Object> params) {
        Object result = orderListService.selectOrderListByUid(params);
        modelAndView.addObject("resultMap", result);
        modelAndView.setViewName("login/mypage");
        return modelAndView;
    }


    @RequestMapping(value = "/delete")
    public ModelAndView delete(ModelAndView modelAndView, @RequestParam Map<String, Object> params) {
        modelAndView.setViewName("shoppingcart/shoppingcart");
        return modelAndView;
    }
}
