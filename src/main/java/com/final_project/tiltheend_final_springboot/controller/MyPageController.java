package com.final_project.tiltheend_final_springboot.controller;


import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.final_project.tiltheend_final_springboot.service.OrderListService;
import com.final_project.tiltheend_final_springboot.service.UserService;

@Controller
@RequestMapping(value = "/myPage")
public class MyPageController {

    @Autowired
    UserService userService;

    @Autowired
    OrderListService orderListService;

    @RequestMapping(value = "/purchaselist", method=RequestMethod.POST)
    public ModelAndView list(ModelAndView modelAndView, @RequestParam Map<String, Object> params) {
        Object result = orderListService.selectOrderListByUid(params);
        modelAndView.addObject("resultMap", result);
        modelAndView.setViewName("login/mypage");
        return modelAndView;
    }

    @RequestMapping(value = "/editInformation")
    public ModelAndView editInformation(ModelAndView modelAndView, @RequestParam Map<String, Object> params) {
        Object currentInfo = userService.selectUserOne(params);
        Map currentInfoMap = (HashMap)currentInfo;
        String currentInfoString = (String)currentInfoMap.get("PHONENUMBER");
        String[] phoneNumber = currentInfoString.split("-");
        for(int i=0 ; i<phoneNumber.length ; i++) {
            currentInfoMap.put("PHONENUMBER"+i, phoneNumber[i]);
        }
        
        modelAndView.addObject("currentInfo", currentInfoMap);
        modelAndView.setViewName("login/Editinformation");
        return modelAndView;
    }

    @RequestMapping(value = "/updateUser")
    public ModelAndView updateUser(ModelAndView modelAndView, @RequestParam Map<String, Object> params) {
        String phonenumber = params.get("PHONENUMBER0")+"-"+params.get("PHONENUMBER1")+"-"+params.get("PHONENUMBER2");
        params.put("PHONENUMBER", phonenumber);
        Object currentInfo = userService.updateuserAndSelectUserOne(params);
        Map currentInfoMap = (HashMap)currentInfo;
        String currentInfoString = (String)currentInfoMap.get("PHONENUMBER");
        String[] phoneNumber = currentInfoString.split("-");
        for(int i=0 ; i<phoneNumber.length ; i++) {
            currentInfoMap.put("PHONENUMBER"+i, phoneNumber[i]);
        }
        modelAndView.addObject("success", "success");
        modelAndView.addObject("currentInfo", currentInfoMap);
        modelAndView.setViewName("login/Editinformation");
        return modelAndView;
    }


    @RequestMapping(value = "/delete")
    public ModelAndView delete(ModelAndView modelAndView, @RequestParam Map<String, Object> params) {
        modelAndView.setViewName("shoppingcart/shoppingcart");
        return modelAndView;
    }
}
