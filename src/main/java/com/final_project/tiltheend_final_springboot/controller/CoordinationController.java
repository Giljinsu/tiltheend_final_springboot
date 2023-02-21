package com.final_project.tiltheend_final_springboot.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.final_project.tiltheend_final_springboot.service.CoordinationService;

@Controller
@RequestMapping(value = "/coordination")
public class CoordinationController {

    @Autowired
    CoordinationService coordinationService;
    // @RequestMapping(value = "/list", method=RequestMethod.GET)
    // public ModelAndView list(@RequestParam Map<String,Object> params, ModelAndView modelAndView) {

    //     modelAndView.setViewName("/coordination/coordinationBoard");
    //     return modelAndView;
    // }

    @RequestMapping(value = "/edit", method=RequestMethod.GET)
    public void edit() {

    }
    
    @RequestMapping(value = {"/write_coordination"})
    public ModelAndView write(@RequestParam Map<String,Object> params, ModelAndView modelAndView) {

        modelAndView.setViewName("/coordination/write_coordination");
        return modelAndView;
    }

    @RequestMapping(value = "/save", method=RequestMethod.POST)
    public ModelAndView save(@RequestParam Map<String,Object> params, ModelAndView modelAndView) {
        Object result = coordinationService.insertCord(params);
        modelAndView.setViewName("/coordination/coordination");
        return modelAndView;
    }

    @RequestMapping(value = "/delete", method=RequestMethod.GET)
    public void delete() {

    }

    @RequestMapping(value = {"/view"})
    public ModelAndView view(@RequestParam Map<String,Object> params, ModelAndView modelAndView) {
        Object resultMap = coordinationService.getList();
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("/coordination/coordination");
        return modelAndView;
    }
}
