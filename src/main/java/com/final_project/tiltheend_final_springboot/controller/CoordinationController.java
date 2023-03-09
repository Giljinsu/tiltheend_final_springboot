package com.final_project.tiltheend_final_springboot.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.final_project.tiltheend_final_springboot.service.CommentService;
import com.final_project.tiltheend_final_springboot.service.CoordinationService;
import com.final_project.tiltheend_final_springboot.service.FilesService;
import com.final_project.tiltheend_final_springboot.utils.CommonUtils;

@Controller
@RequestMapping(value = "/coordination")
public class CoordinationController {

    @Autowired
    CommentService commentService;

    @Autowired
    CoordinationService coordinationService;

    @Autowired
    FilesService filesService;

    CommonUtils commonUtils = new CommonUtils();
    
    @RequestMapping(value = "/view", method=RequestMethod.POST)
    public ModelAndView view(@RequestParam Map<String,Object> params, ModelAndView modelAndView,
        HttpServletRequest req, HttpServletResponse res) {
            Boolean canViewCountUp = commonUtils.viewCountUp(params, req, res);

        if(canViewCountUp) {
            coordinationService.viewCountUp(params);
        }
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
        modelAndView.addObject("destination", "/coordination/list/1");
        // modelAndView.addObject("COORDINATION_ID",COORDINATION_ID);
        modelAndView.setViewName("/coordination/temp");
        return modelAndView;
    }

    @RequestMapping(value = "/update", method=RequestMethod.POST)
    public ModelAndView update(@RequestParam Map<String,Object> params,
            MultipartHttpServletRequest multipartHttpServletRequest, ModelAndView modelAndView) {

        String COORDINATION_ID= (String) params.get("COORDINATION_ID");
        int fileCount = Integer.parseInt((String)params.get("fileCount"));
        List ORGINALFILE_NAME = new ArrayList<>();
        List ATTACHFILE_SEQ = new ArrayList<>();
        List del_ATTACHFILE_SEQ = new ArrayList<>();
        List FILE_ORDER = new ArrayList<>();
        String PHYSICALFILE_NAME =(String)params.get("PHYSICALFILE_NAME");
        String isAdded = "";
        if(params.get("ISADDED")!=null) {
            isAdded = (String)params.get("ISADDED");
        }
        for(int i=0; i<=fileCount ; i++) {
            // PHYSICALFILE_NAME = (String)params.get("PHYSICALFILE_NAME["+i+"]");
            ORGINALFILE_NAME.add(params.get("ORGINALFILE_NAME["+i+"]"));
            if(params.get("ATTACHFILE_SEQ["+i+"]")!=null) {
                ATTACHFILE_SEQ.add(params.get("ATTACHFILE_SEQ["+i+"]"));
            }
            if(params.get("delete_ATTACHFILE_SEQ["+i+"]")!=null) {
                del_ATTACHFILE_SEQ.add(params.get("delete_ATTACHFILE_SEQ["+i+"]"));
                FILE_ORDER.add(params.get("FILE_ORDER["+i+"]"));
            }
        }
        if(PHYSICALFILE_NAME==null && ORGINALFILE_NAME==null) { //새로 업로드
        }
        ORGINALFILE_NAME = commonUtils.updateFiles(multipartHttpServletRequest, PHYSICALFILE_NAME, ORGINALFILE_NAME);
        if(ATTACHFILE_SEQ.size()!=0) {
            for(int i=0; i<ATTACHFILE_SEQ.size() ; i++) {
                    params.put("ATTACHFILE_SEQ", ATTACHFILE_SEQ.get(i));
                    params.put("PHYSICALFILE_NAME", PHYSICALFILE_NAME);
                    params.put("ORGINALFILE_NAME", ORGINALFILE_NAME.get(i));
                    filesService.updateFile(params);
            }
        }

        // 파일 삭제
        // List del_ATTACHFILE_SEQ = new ArrayList<>();
        for(int i=0; i<del_ATTACHFILE_SEQ.size();i++) {
            params.put("delete_ATTACHFILE_SEQ", del_ATTACHFILE_SEQ.get(i));
            params.put("FILE_ORDER", FILE_ORDER.get(i));
            filesService.deleteFileOne(params);
        }

        // 파일 인서트
        Map attachFile;
        List attachfiles = new ArrayList<>();
        int fileOrder=fileCount+1;
        if(isAdded.equals("true")){
            for(int i=0; i<ORGINALFILE_NAME.size()-ATTACHFILE_SEQ.size(); i++) {
                attachFile = new HashMap<>();
                attachFile.put("ATTACHFILE_SEQ", commonUtils.makeUuid());
                attachFile.put("SOURCE_UNIQUE_SEQ", params.get("SOURCE_UNIQUE_SEQ"));
                attachFile.put("ORGINALFILE_NAME", ORGINALFILE_NAME.get(i+ATTACHFILE_SEQ.size()));
                attachFile.put("PHYSICALFILE_NAME", PHYSICALFILE_NAME);
                attachFile.put("REGISTER_SEQ", params.get("REGISTER_SEQ"));
                attachFile.put("MODIFIER_SEQ", params.get("MODIFIER_SEQ"));
                attachFile.put("FILE_ORDER", ++fileOrder);
                attachfiles.add(attachFile);
            }
            params.put("attachFiles", attachfiles);
            filesService.insertFile(params);
        } // insert
        coordinationService.updateCord(params);
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
        params.put("currentPage", 1);
        params.put("pageScale", 8);
        Object result = coordinationService.deleteCordAndFileAndCommentAndGetList(params);
        modelAndView.addObject("resultMap", result);
        modelAndView.setViewName("/coordination/coordinationBoard");
        return modelAndView;
    }

    @RequestMapping(value = {"/list/{currentPage}"}, method=RequestMethod.GET)
    public ModelAndView list(@RequestParam Map<String,Object> params, ModelAndView modelAndView,
        @PathVariable String currentPage) {
        int currentPageNum = Integer.parseInt(currentPage);
        if(currentPageNum < 1) {
            currentPageNum = 1;
        }
        params.put("currentPage", currentPageNum);
        params.put("pageScale", 8);
        Object resultMap = coordinationService.getListWithPagination(params);
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

    @RequestMapping(value = "/deleteComment", method=RequestMethod.POST)
    public ModelAndView deleteComment(@RequestParam Map<String,Object> params, ModelAndView modelAndView) {
        commentService.deleteCommentOne(params);
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
}
