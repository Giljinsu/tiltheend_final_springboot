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
import com.final_project.tiltheend_final_springboot.utils.CommonUtils;

@Controller
@RequestMapping(value = "admin")
public class AdminController {

    @Autowired
    AdminService adminService;

    @Autowired
    ListService listService;

    CommonUtils commonUtils = new CommonUtils();

    @RequestMapping(value = { "", "/", "/first" }, method = RequestMethod.GET)
    public ModelAndView adminfunc(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {
        Object resultMap = adminService.selectAdmin(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("admin/admin");
        return modelAndView;
    }

    @RequestMapping(value = "second", method = RequestMethod.GET)
    public ModelAndView printList(@RequestParam Map<String, Object> params,
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
        Object resultMap = listService.selectAnnouncement(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("admin/annoForm");
        return modelAndView;
    }

    @RequestMapping(value = "delete/announcement/{UID}", method = RequestMethod.GET)
    public ModelAndView delAnno(@RequestParam Map<String, Object> params, @PathVariable String UID,
            ModelAndView modelAndView) {
        params.put("POST_NO_ANNO", UID);
        Object resultMap = listService.deleteAnnouncement(params);
        resultMap = this.printList(params, modelAndView); // 다시 화면을 표시하기 위해 불러옴
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("admin/admin_list");
        return modelAndView;
    }

    @RequestMapping(value = "/write/announcement/save", method = RequestMethod.POST)
    public ModelAndView saveANNO(@RequestParam Map<String, Object> params, ModelAndView modelAndView) {
        params.put("POST_NO_ANNO", commonUtils.makeUuid());
        Object resultMap = listService.insertAnnouncement(params);
        resultMap = this.printList(params, modelAndView);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("admin/admin_list");
        return modelAndView;
    }

    @RequestMapping(value = "/edit/announcement/save", method = RequestMethod.POST)
    public ModelAndView editANNO(@RequestParam Map<String, Object> params, ModelAndView modelAndView) {
        Object resultMap = listService.updateAnnouncement(params);
        resultMap = this.printList(params, modelAndView);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("admin/admin_list");
        return modelAndView;
    }

    @RequestMapping(value = "edit/faq/{UID}", method = RequestMethod.GET)
    public ModelAndView editFAQ(@RequestParam Map<String, Object> params, @PathVariable String UID,
            ModelAndView modelAndView) {
        params.put("POST_NO_FAQ", UID);
        Object resultMap = listService.selectFAQ(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("admin/faqForm");
        return modelAndView;
    }

    @RequestMapping(value = "delete/faq/{UID}", method = RequestMethod.GET)
    public ModelAndView delFAQ(@RequestParam Map<String, Object> params, @PathVariable String UID,
            ModelAndView modelAndView) {
        params.put("POST_NO_FAQ", UID);
        Object resultMap = listService.deleteFAQ(params);
        resultMap = this.printList(params, modelAndView); // 다시 화면을 표시하기 위해 불러옴
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("admin/admin_list");
        return modelAndView;
    }

    @RequestMapping(value = "/write/faq/save", method = RequestMethod.POST)
    public ModelAndView saveFAQ(@RequestParam Map<String, Object> params, ModelAndView modelAndView) {
        params.put("POST_NO_FAQ", commonUtils.makeUuid());
        Object resultMap = listService.insertFAQ(params);
        resultMap = this.printList(params, modelAndView);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("admin/admin_list");
        return modelAndView;
    }

    @RequestMapping(value = "/edit/faq/save", method = RequestMethod.POST)
    public ModelAndView editFAQ(@RequestParam Map<String, Object> params, ModelAndView modelAndView) {
        Object resultMap = listService.updateFAQ(params);
        resultMap = this.printList(params, modelAndView);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("admin/admin_list");
        return modelAndView;
    }

}
