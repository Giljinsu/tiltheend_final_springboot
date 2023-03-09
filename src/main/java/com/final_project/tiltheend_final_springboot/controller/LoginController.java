package com.final_project.tiltheend_final_springboot.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.final_project.tiltheend_final_springboot.service.LoginService;
import com.final_project.tiltheend_final_springboot.utils.CommonUtils;

@Controller
@RequestMapping(value = "/login")
public class LoginController {
    @Autowired
    LoginService loginService;

    @Autowired
    BCryptPasswordEncoder bCryptPasswordEncoder;

    CommonUtils commonUtils= new CommonUtils();

    @RequestMapping(value = "/loginForm")
    public ModelAndView login(@RequestParam Map<String,Object> params, ModelAndView modelAndView) {
        String path = "/login/login";
        modelAndView.setViewName(path);
        return modelAndView;
    }

    @RequestMapping(value = "/logoutForm")
    public ModelAndView logout(@RequestParam Map<String,Object> params, ModelAndView modelAndView) {
        String path = "/logoutForm";
        modelAndView.setViewName(path);
        return modelAndView;
    }

    @RequestMapping(value = "/signup", method=RequestMethod.GET)
    public ModelAndView signupPage(@RequestParam Map<String,Object> params, ModelAndView modelAndView) {
        String path = "/login/signup";
        Object idList = loginService.getIds(path);
        modelAndView.addObject("idList", idList);
        modelAndView.setViewName(path);
        return modelAndView;
    }

    @RequestMapping(value = "/join", method=RequestMethod.POST)
    public ModelAndView join(@RequestParam Map<String,Object> params, ModelAndView modelAndView) {
        
        String UID = commonUtils.makeUuid();
        String PW  = (String)params.get("PW");
        params.put("UID", UID);
        params.put("ROLE", "MEMBER");
        params.put("PW", bCryptPasswordEncoder.encode(PW));
        String phonenumber = params.get("PHONENUMBER0")+"-"+params.get("PHONENUMBER1")+"-"+params.get("PHONENUMBER1");
        params.put("PHONENUMBER", phonenumber);
        loginService.signUp(params);
        String path = "/login/login";
        modelAndView.setViewName(path);
        return modelAndView;
    }

    @RequestMapping(value = "/checkingid", method=RequestMethod.GET)
    public ModelAndView checkingid(@RequestParam Map<String,Object> params, ModelAndView modelAndView) {
        String path = "/login/signup";
        List idList = (ArrayList)loginService.getIds(path);
        for(int i=0; i<idList.size(); i++) {
            Map idListMap = (HashMap)idList.get(i);
            String dbId = (String)idListMap.get("ID"); 
            String currentId = (String)params.get("idValue");
            if(dbId.equals(currentId)) {
                modelAndView.addObject("currentInfo", params);
                modelAndView.addObject("idcheck","아이디 중복입니다.");
                modelAndView.setViewName(path);
                return modelAndView;
            }
        }
        modelAndView.addObject("currentInfo", params);
        modelAndView.addObject("idcheck","사용가능한 ID입니다.");
        modelAndView.setViewName(path);
        return modelAndView;
    }
}
