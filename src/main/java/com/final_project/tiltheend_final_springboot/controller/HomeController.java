package com.final_project.tiltheend_final_springboot.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.final_project.tiltheend_final_springboot.service.CoordinationService;
import com.final_project.tiltheend_final_springboot.service.SearchService;
import com.final_project.tiltheend_final_springboot.service.ShopService;

@Controller
public class HomeController {

    @Autowired
    ShopService shopService;

    @Autowired
    CoordinationService coordinationService;

    @Autowired
    SearchService searchService;

    @RequestMapping(value = { "/", "" })
    public ModelAndView bypass(ModelAndView modelAndView) {
        Object resultMap = coordinationService.getListIndexPage();
        Object resultMapBestProduct = shopService.getBestsellingProductList18();

        modelAndView.addObject("resultMap", resultMap);
        modelAndView.addObject("resultMapBestProduct", resultMapBestProduct);
        modelAndView.setViewName("/index");
        return modelAndView;
    }

    @RequestMapping(value = { "search" }, method=RequestMethod.POST)
    public ModelAndView search(ModelAndView modelAndView, @RequestParam Map<String, Object> params) {
        String text = (String)params.get("SEARCH_TEXT");
        String searchtext = "%"+text+"%";
        params.put("SEARCH_TEXT", searchtext);
        Object productList = searchService.searchProduct(params);
        Object coordinationList = searchService.searchCoordination(params);
        Object qnaList = searchService.searchQna(params);
        Object faqList = searchService.searchFaq(params);
        modelAndView.addObject("searchtext", text);
        modelAndView.addObject("productLists", productList);
        modelAndView.addObject("coordinationLists", coordinationList);
        modelAndView.addObject("qnaLists", qnaList);
        modelAndView.addObject("faqLists", faqList);
        modelAndView.setViewName("/search/searchpage");
        return modelAndView;
    }
}
