package com.final_project.tiltheend_final_springboot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.final_project.tiltheend_final_springboot.service.ShopService;

@Controller
public class HomeController {

    @Autowired
    ShopService shopService;

    @RequestMapping(value = { "/", "" })
    public ModelAndView bypass(ModelAndView modelAndView) {

        Object resultMapBestProduct = shopService.getBestsellingProductList();
        modelAndView.addObject("resultMapBestProduct", resultMapBestProduct);
        modelAndView.setViewName("/index");
        return modelAndView;
    }
}
