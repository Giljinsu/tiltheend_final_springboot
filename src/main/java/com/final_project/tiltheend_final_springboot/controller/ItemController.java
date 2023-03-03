package com.final_project.tiltheend_final_springboot.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.final_project.tiltheend_final_springboot.service.ItemService;

@Controller
@RequestMapping(value = "/shop")
public class ItemController {
    @Autowired
    ItemService itemService;

    @RequestMapping(value = "/{UID}", method = RequestMethod.GET)
    public ModelAndView listQna(@RequestParam Map<String, Object> params, @PathVariable String UID,
            ModelAndView modelAndView) {
        params.put("PRODUCT_ID", UID);
        Object resultMap = itemService.selectItemWithUID(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("qna/qna");
        return modelAndView;
    }
}
