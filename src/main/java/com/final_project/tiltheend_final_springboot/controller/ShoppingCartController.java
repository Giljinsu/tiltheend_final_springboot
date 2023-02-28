package com.final_project.tiltheend_final_springboot.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.final_project.tiltheend_final_springboot.service.ShoppingCartService;
import com.final_project.tiltheend_final_springboot.service.OrderListService;
import com.final_project.tiltheend_final_springboot.service.UserService;

@Controller
@RequestMapping(value = "/shoppingcart")
public class ShoppingCartController {
    @Autowired
    ShoppingCartService shoppingCartService;

    @Autowired
    UserService userService;

    @Autowired
    OrderListService orderListService;

    @RequestMapping(value = "/list", method=RequestMethod.POST)
    public ModelAndView list(ModelAndView modelAndView, @RequestParam Map<String, Object> params) {
        Object result = shoppingCartService.selectCartListAndFiles(params);
        modelAndView.addObject("resultMap", result);
        modelAndView.setViewName("shoppingcart/shoppingcart");
        return modelAndView;
    }


    @RequestMapping(value = "/delete")
    public ModelAndView delete(ModelAndView modelAndView, @RequestParam Map<String, Object> params) {
        orderListService.deleteOrderList(params);
        Object result = shoppingCartService.deleteAndSelectList(params);
        modelAndView.addObject("resultMap", result);
        modelAndView.setViewName("shoppingcart/shoppingcart");
        return modelAndView;
    }
}
