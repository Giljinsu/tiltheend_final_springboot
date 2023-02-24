package com.final_project.tiltheend_final_springboot.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.final_project.tiltheend_final_springboot.service.ListService;

@Controller
@RequestMapping(value = "/list")
public class ListController {

    @Autowired
    ListService listService;

    // qna
    @RequestMapping(value = "/qna", method = RequestMethod.GET)
    public ModelAndView listQna(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {
        Object resultMap = listService.selectQNAWithJoin(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("qna/qna");
        return modelAndView;
    }

    @RequestMapping(value = "/qna/{category}", method = RequestMethod.GET)
    public ModelAndView listQnaCategory(@RequestParam Map<String, Object> params, @PathVariable String category,
            ModelAndView modelAndView) {
        params.put("CATEGORY", category);
        Object resultMap = listService.selectQNACategory(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("qna/qna");
        return modelAndView;
    }

    // faq
    @RequestMapping(value = "/faq", method = RequestMethod.GET)
    public ModelAndView listFaq(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {
        Object resultMap = listService.selectFAQWithJoin(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("qna/faq");
        return modelAndView;
    }

    @RequestMapping(value = "/faq/{category}", method = RequestMethod.GET)
    public ModelAndView listFaqCategory(@RequestParam Map<String, Object> params, @PathVariable String category,
            ModelAndView modelAndView) {
        params.put("CATEGORY", category);
        Object resultMap = listService.selectFAQCategory(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("qna/faq");
        return modelAndView;
    }

    // announcement
    @RequestMapping(value = "/announcement", method = RequestMethod.GET)
    public ModelAndView listAnnouncement(@RequestParam Map<String, Object> params, ModelAndView modelAndView) {
        Object resultMap = listService.selectAnnouncementWithJoin(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("announcement/announcement");
        return modelAndView;
    }

    @RequestMapping(value = "/announcement/{category}", method = RequestMethod.GET)
    public ModelAndView listAnnouncementCategory(@RequestParam Map<String, Object> params,
            @PathVariable String category,
            ModelAndView modelAndView) {
        params.put("CATEGORY", category);
        Object resultMap = listService.selectAnnouncementCategory(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("announcement/announcement");
        return modelAndView;
    }
}
