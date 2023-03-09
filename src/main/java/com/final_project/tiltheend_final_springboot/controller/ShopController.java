package com.final_project.tiltheend_final_springboot.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.final_project.tiltheend_final_springboot.service.ShopService;

@Controller
@RequestMapping("/shop2")
public class ShopController {

  @Autowired
  ShopService shopService;

  @GetMapping("/{category}")
  public ModelAndView productListWomen(@RequestParam Map<String, Object> params, @PathVariable String category,
      ModelAndView modelAndView) {
    params.put("category", category);
    Object resultMap = shopService.getProductList(params);
    Object resultMapBestProduct = shopService.getBestsellingProductList(params);
    modelAndView.addObject("resultMap", resultMap);
    modelAndView.addObject("resultMapBestProduct", resultMapBestProduct);
    modelAndView.setViewName("/shop/shop");
    return modelAndView;
  }

  @GetMapping("/shop")
  public ModelAndView productList(ModelAndView modelAndView) {
    String category = "all";
    Object resultMap = shopService.getProductList();
    Object resultMapBestProduct = shopService.getBestsellingProductList();
    modelAndView.addObject("category", category);
    modelAndView.addObject("resultMap", resultMap);
    modelAndView.addObject("resultMapBestProduct", resultMapBestProduct);
    modelAndView.setViewName("/shop/shop");
    return modelAndView;
  }

}
