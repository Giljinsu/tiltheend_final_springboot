package com.final_project.tiltheend_final_springboot.controller;

import java.util.HashMap;
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

  // @GetMapping("/{category}")
  // public ModelAndView productListWomen(@RequestParam Map<String, Object> params, @PathVariable String category,
  //     ModelAndView modelAndView) {
  //   params.put("category", category);
  //   Map<String,Object> resultMap = new HashMap<String,Object>();
  //   resultMap.put("resultList",shopService.getProductList(params));
  //   resultMap.put("paginations",paginations);

  //   Object resultMapBestProduct = shopService.getBestsellingProductList(params);

    
  //   modelAndView.addObject("resultMap", resultMap);
  //   modelAndView.addObject("resultMapBestProduct", resultMapBestProduct);
  //   modelAndView.setViewName("/shop/shop");
  //   return modelAndView;
  // }

  @GetMapping("/{category}/{currentPage}")
  public ModelAndView productList(@RequestParam Map<String, Object> params, @PathVariable String currentPage, @PathVariable String category, ModelAndView modelAndView) {
    
    params.put("currentPage", Integer.parseInt(currentPage));
    params.put("pageScale", 8);
    params.put("category", category);

    Object resultMap = shopService.getListWithPagination(params); // products with pagination
    // Object resultMap = shopService.getProductList(); all products
    Object resultMapBestProduct = shopService.getBestsellingProductList(params);
    // modelAndView.addObject("category", category);
    modelAndView.addObject("resultMap", resultMap);
    modelAndView.addObject("resultMapBestProduct", resultMapBestProduct);
    modelAndView.setViewName("/shop/shop");
    return modelAndView;
  }

}
