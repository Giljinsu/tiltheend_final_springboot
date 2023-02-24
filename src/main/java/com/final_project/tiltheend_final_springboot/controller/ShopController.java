package com.final_project.tiltheend_final_springboot.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.final_project.tiltheend_final_springboot.service.ShopService;

@Controller
@RequestMapping("/shop")
public class ShopController {

  @Autowired
  ShopService shopService;

  @GetMapping("/shop")
  public ModelAndView productList(ModelAndView modelAndView) {
    Object resultMap = shopService.getProductList();
    Object resultMapBestProduct = shopService.getBestsellingProductList();
    modelAndView.addObject("resultMap", resultMap);
    modelAndView.addObject("resultMapBestProduct", resultMapBestProduct);
    modelAndView.setViewName("/shop/shop");
    return modelAndView;
  }
}
