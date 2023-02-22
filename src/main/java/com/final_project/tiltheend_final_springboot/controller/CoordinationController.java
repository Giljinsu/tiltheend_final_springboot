package com.final_project.tiltheend_final_springboot.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.final_project.tiltheend_final_springboot.service.CoordinationService;
import com.final_project.tiltheend_final_springboot.service.FilesService;
import com.final_project.tiltheend_final_springboot.utils.CommonUtils;

@Controller
@RequestMapping(value = "/coordination")
public class CoordinationController {

    @Autowired
    CoordinationService coordinationService;

    @Autowired
    FilesService filesService;

    CommonUtils commonUtils = new CommonUtils();
    
    @RequestMapping(value = "/view", method=RequestMethod.POST)
    public ModelAndView view(@RequestParam Map<String,Object> params, ModelAndView modelAndView) {
        params.put("SOURCE_UNIQUE_SEQ", params.get("COORDINATION_ID"));
        Object fileInfo= filesService.selectFileOne(params);
        Object resultMap = coordinationService.selectCordOne(params);
        modelAndView.addObject("fileInfo", fileInfo);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("/coordination/coordination");
        return modelAndView;
    }

    @RequestMapping(value = "/edit", method=RequestMethod.GET)
    public void edit() {

    }
    
    @RequestMapping(value = {"/write_coordination"})
    public ModelAndView write(@RequestParam Map<String,Object> params, ModelAndView modelAndView) {

        modelAndView.setViewName("/coordination/write_coordination");
        return modelAndView;
    }

    @RequestMapping(value = "/save", method=RequestMethod.POST)
    public ModelAndView save(@RequestParam Map<String,Object> params,
            MultipartHttpServletRequest multipartHttpServletRequest, ModelAndView modelAndView) {
        
        params.put("COORDINATION_ID", commonUtils.makeUuid());
        // params.put("COMMON_CODE_ID", "해당primarykey 필드 입력"); 그래야 잘 작동됨
        params.put("COMMON_CODE_ID", params.get("COORDINATION_ID"));
        List attachFiles = commonUtils.createFiles(multipartHttpServletRequest, params); // 파일 만들어짐
        params.put("attachFiles", attachFiles);
        Object result = coordinationService.insertFilesAndCordAndGetList(params);
        modelAndView.addObject("resultMap", result);
        modelAndView.setViewName("/coordination/coordinationBoard");
        return modelAndView;
    }

    @RequestMapping(value = "/delete", method=RequestMethod.POST)
    public ModelAndView delete(@RequestParam Map<String,Object> params, ModelAndView modelAndView) {
        Object fileinfo = filesService.selectFileOne(params);
        Map file = (Map)fileinfo;
        Object physicalfile_name = file.get("PHYSICALFILE_NAME");

        commonUtils.deleteFile(physicalfile_name);
        Object result = coordinationService.deleteCordAndFileAndGetList(params);
        modelAndView.addObject("resultMap", result);
        modelAndView.setViewName("/coordination/coordinationBoard");
        return modelAndView;
    }

    @RequestMapping(value = {"/list"}, method=RequestMethod.GET)
    public ModelAndView list(@RequestParam Map<String,Object> params, ModelAndView modelAndView) {
        Object resultMap = coordinationService.getList();
        
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("/coordination/coordinationBoard");
        return modelAndView;
    }
}
