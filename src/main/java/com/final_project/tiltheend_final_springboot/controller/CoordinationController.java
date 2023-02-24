package com.final_project.tiltheend_final_springboot.controller;

import java.util.ArrayList;
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
        Object result = coordinationService.selectCordOne(params);
        Object comments= coordinationService.getCommentList(params);
        Object commentCount= coordinationService.getCommentCount(params);
        Object files = filesService.selectFiles(params);
        modelAndView.addObject("files", files);
        modelAndView.addObject("commentCount", commentCount);
        modelAndView.addObject("comments", comments);
        modelAndView.addObject("resultMap", result);
        modelAndView.setViewName("/coordination/coordination");
        return modelAndView;
    }

    @RequestMapping(value = "/edit", method=RequestMethod.POST)
    public ModelAndView edit(@RequestParam Map<String, Object> params, ModelAndView modelAndView) {
        Object result = coordinationService.selectCordOne(params);
        Object files = filesService.selectFiles(params);
        ArrayList arrayList = (ArrayList)files;
        modelAndView.addObject("filecount", arrayList.size());
        modelAndView.addObject("files", files);
        modelAndView.addObject("resultMap", result);
        modelAndView.setViewName("/coordination/write_coordination");
        return modelAndView;
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
        
        // modelAndView.addObject("resultMap", result);
        // String COORDINATION_ID = null;
        modelAndView.addObject("destination", "/coordination/list");
        // modelAndView.addObject("COORDINATION_ID",COORDINATION_ID);
        modelAndView.setViewName("/coordination/temp");
        return modelAndView;
    }

    @RequestMapping(value = "/update", method=RequestMethod.POST)
    public ModelAndView update(@RequestParam Map<String,Object> params,
            MultipartHttpServletRequest multipartHttpServletRequest, ModelAndView modelAndView) {
        // 파일 업데이트 = 삭제 후 저장
        // 파일 삭제
        Object fileinfo = filesService.selectFiles(params);
        List list = (ArrayList)fileinfo;
        Map file = (Map) list.get(0);
        Object physicalfile_name = file.get("PHYSICALFILE_NAME");
        commonUtils.deleteFile(physicalfile_name);
        filesService.deleteFile(params);
        
        // 파일 저장
        String COORDINATION_ID= (String) params.get("COORDINATION_ID");
        params.put("COMMON_CODE_ID", params.get("COORDINATION_ID"));
        List attachFiles = commonUtils.createFiles(multipartHttpServletRequest, params); // 파일 만들어짐
        params.put("attachFiles", attachFiles);
        Object result = filesService.insertFile(params);

        //코디게시판 업데이트
        result = coordinationService.updateCordAndGetList(params);
        // Object files = filesService.selectFiles(params);
        // Object comments= coordinationService.getCommentList(params);
        // Object commentCount= coordinationService.getCommentCount(params);

        // modelAndView.addObject("files", files);
        // modelAndView.addObject("resultMap", result);
        // modelAndView.addObject("commentCount", commentCount);
        // modelAndView.addObject("comments", comments);
        modelAndView.addObject("destination", "/coordination/view");
        modelAndView.addObject("COORDINATION_ID",COORDINATION_ID);
        modelAndView.setViewName("/coordination/temp");
        return modelAndView;
    }

    @RequestMapping(value = "/delete", method=RequestMethod.POST)
    public ModelAndView delete(@RequestParam Map<String,Object> params, ModelAndView modelAndView) {
        Object fileinfo = filesService.selectFiles(params);
        List list = (ArrayList)fileinfo;
        Map file = (Map) list.get(0);
        // Map file = (Map)fileinfo;
        Object physicalfile_name = file.get("PHYSICALFILE_NAME");

        commonUtils.deleteFile(physicalfile_name);
        Object result = coordinationService.deleteCordAndFileAndCommentAndGetList(params);
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

    @RequestMapping(value = "/comment", method=RequestMethod.POST)
    public ModelAndView comment(@RequestParam Map<String,Object> params, ModelAndView modelAndView) {
        String COMMENT_UID = commonUtils.makeUuid();
        params.put("COMMENT_UID", COMMENT_UID);
        Object result = coordinationService.insertCommentAndGetCordFileOne(params);
        Object comments= coordinationService.getCommentList(params);
        Object commentCount= coordinationService.getCommentCount(params);
        Object files = filesService.selectFiles(params);
        modelAndView.addObject("files", files);
        modelAndView.addObject("commentCount", commentCount);
        modelAndView.addObject("comments", comments);
        modelAndView.addObject("resultMap", result);
        modelAndView.setViewName("/coordination/coordination");
        return modelAndView;
    }
}
