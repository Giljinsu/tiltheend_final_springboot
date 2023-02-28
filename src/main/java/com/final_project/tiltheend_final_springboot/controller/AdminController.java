package com.final_project.tiltheend_final_springboot.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.final_project.tiltheend_final_springboot.service.AdminService;
import com.final_project.tiltheend_final_springboot.service.ListService;

@Controller
@RequestMapping(value = "admin")
public class AdminController {

    @Autowired
    AdminService adminService;

    @Autowired
    ListService listService;

    @RequestMapping(value = { "", "/", "/first" }, method = RequestMethod.GET)
    public ModelAndView adminfunc(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {
        Object resultMap = adminService.selectAdmin(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("admin/admin");
        return modelAndView;
    }

    @RequestMapping(value = "second", method = RequestMethod.GET)
    public ModelAndView listQna(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {
        Object resultMap = listService.selectQNAWithJoin(params);
        modelAndView.addObject("qna", resultMap);
        resultMap = listService.selectFAQWithJoin(params);
        modelAndView.addObject("faq", resultMap);
        resultMap = listService.selectAnnouncementWithJoin(params);
        modelAndView.addObject("announcement", resultMap);
        modelAndView.setViewName("admin/admin_list");
        return modelAndView;
    }

    @RequestMapping(value = "edit/announcement/{UID}", method = RequestMethod.GET)
    public ModelAndView editAnno(@RequestParam Map<String, Object> params, @PathVariable String UID,
            ModelAndView modelAndView) {
        params.put("POST_NO_ANNO", UID);
        Object resultMap = listService.selectAnnouncementUID(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("admin/annoForm");
        return modelAndView;
    }

    @RequestMapping(value = "delete/announcement/{UID}", method = RequestMethod.GET)
    public ModelAndView delAnno(@RequestParam Map<String, Object> params, @PathVariable String UID,
            ModelAndView modelAndView) {
        params.put("POST_NO_ANNO", UID);
        Object resultMap = listService.deleteAnnouncement(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("admin/admin_list");
        return modelAndView;
    }

}
