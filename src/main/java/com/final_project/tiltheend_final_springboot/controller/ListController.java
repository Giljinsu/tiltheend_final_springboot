package com.final_project.tiltheend_final_springboot.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.final_project.tiltheend_final_springboot.service.CommentService;
import com.final_project.tiltheend_final_springboot.service.ListService;
import com.final_project.tiltheend_final_springboot.service.SearchService;
import com.final_project.tiltheend_final_springboot.utils.CommonUtils;

@Controller
@RequestMapping(value = "/list")
public class ListController {

    @Autowired
    ListService listService;

    @Autowired
    CommentService commentService;

    @Autowired
    SearchService searchService;

    CommonUtils commonUtils = new CommonUtils();

    // qna
    @RequestMapping(value = "/qna/{currentPage}", method = RequestMethod.GET)
    public ModelAndView listQna(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView, @PathVariable String currentPage) {
        int currentPageNum = Integer.parseInt(currentPage);
        if (currentPageNum < 1) {
            currentPageNum = 1;
        }
        params.put("currentPage", currentPageNum);
        params.put("pageScale", 5);
        Object resultMap = listService.getQNAListWithPagination(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("qna/qna");
        return modelAndView;
    }

    @RequestMapping(value = "/qna/{currentPage}/{category}", method = RequestMethod.GET)
    public ModelAndView listQnaCategory(@RequestParam Map<String, Object> params, @PathVariable String category,
            ModelAndView modelAndView, @PathVariable String currentPage) {
        int currentPageNum = Integer.parseInt(currentPage);
        if (currentPageNum < 1) {
            currentPageNum = 1;
        }
        params.put("currentPage", currentPageNum);
        params.put("pageScale", 5);
        params.put("CATEGORY", category);
        Object resultMap = listService.getQNAListWithPaginationAndCategory(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("qna/qna");
        return modelAndView;
    }

    @RequestMapping(value = "/qna/save/{currentPage}", method = RequestMethod.POST)
    public ModelAndView saveqna(@RequestParam Map<String, Object> params, ModelAndView modelAndView,
            @PathVariable String currentPage) {
        int currentPageNum = Integer.parseInt(currentPage);
        if (currentPageNum < 1) {
            currentPageNum = 1;
        }
        params.put("currentPage", currentPageNum);
        params.put("pageScale", 5);
        params.put("POST_NO_QNA", commonUtils.makeUuid());
        Object resultMap = listService.insertQNAAndSelectQNA(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("qna/qna");
        return modelAndView;
    }

    @RequestMapping(value = "/qna/board/{UID}", method = RequestMethod.GET)
    public ModelAndView qnaBoard(@RequestParam Map<String, Object> params, @PathVariable String UID,
            ModelAndView modelAndView) {
        params.put("UID", UID);
        Object resultMap = listService.selectQNAUID(params);
        Object comment = commentService.selectCommentOneWithoutUser(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.addObject("comments", comment);
        modelAndView.setViewName("qna/qnaboard");
        return modelAndView;
    }

    @RequestMapping(value = "/qna/write", method = RequestMethod.GET)
    public ModelAndView writeqna(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {
        modelAndView.setViewName("qna/qnaForm");
        return modelAndView;
    }

    @RequestMapping(value = "/qna/comment/{UID}", method = RequestMethod.POST)
    public ModelAndView saveComment(@RequestParam Map<String, Object> params, @PathVariable String UID,
            ModelAndView modelAndView) {
        params.put("COMMENT_UID", commonUtils.makeUuid());
        Object resultMap = commentService.insertComment_Qna(params);
        params.put("UID", UID);
        resultMap = listService.selectQNAUID(params);
        Object comment = commentService.selectCommentOneWithoutUser(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.addObject("comments", comment);
        modelAndView.setViewName("qna/qnaboard");
        return modelAndView;
    }

    @RequestMapping(value = { "/qna/{currentPage}/search" }, method = RequestMethod.POST)
    public ModelAndView searchQna(ModelAndView modelAndView, @RequestParam Map<String, Object> params,
            @PathVariable String currentPage) {
        int currentPageNum = Integer.parseInt(currentPage);
        if (currentPageNum < 1) {
            currentPageNum = 1;
        }
        params.put("currentPage", currentPageNum);
        params.put("pageScale", 5);
        String text = (String) params.get("SEARCH_TEXT");
        String searchtext = "%" + text + "%";
        params.put("SEARCH_TEXT", searchtext);
        Object qnaList = searchService.getQNAWithSearch(params);
        modelAndView.addObject("resultMap", qnaList);
        modelAndView.setViewName("/qna/qna");
        return modelAndView;
    }

    @RequestMapping(value = "/qna/delcomment", method = RequestMethod.POST)
    public ModelAndView delComment(@RequestParam Map<String, Object> params, ModelAndView modelAndView) {
        Object resultMap = commentService.deleteComment_Qna(params);
        resultMap = listService.selectQNAUID(params);
        Object comment = commentService.selectCommentOneWithoutUser(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.addObject("comments", comment);
        modelAndView.setViewName("qna/qnaboard");
        return modelAndView;
    }

    // faq
    @RequestMapping(value = "/faq/{currentPage}", method = RequestMethod.GET)
    public ModelAndView listFaq(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView, @PathVariable String currentPage) {
        int currentPageNum = Integer.parseInt(currentPage);
        if (currentPageNum < 1) {
            currentPageNum = 1;
        }
        params.put("currentPage", currentPageNum);
        params.put("pageScale", 5);
        Object resultMap = listService.getFAQListWithPagination(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("qna/faq");
        return modelAndView;
    }

    @RequestMapping(value = "/faq/{currentPage}/{category}", method = RequestMethod.GET)
    public ModelAndView listFaqCategory(@RequestParam Map<String, Object> params, @PathVariable String category,
            ModelAndView modelAndView, @PathVariable String currentPage) {
        int currentPageNum = Integer.parseInt(currentPage);
        if (currentPageNum < 1) {
            currentPageNum = 1;
        }
        params.put("currentPage", currentPageNum);
        params.put("pageScale", 5);
        params.put("CATEGORY", category);
        Object resultMap = listService.getFAQListWithPaginationAndCategory(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("qna/faq");
        return modelAndView;
    }

    @RequestMapping(value = "/faq/board/{UID}", method = RequestMethod.GET)
    public ModelAndView faqBoard(@RequestParam Map<String, Object> params, @PathVariable String UID,
            ModelAndView modelAndView) {
        params.put("UID", UID);
        Object resultMap = listService.selectFAQUID(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("qna/faqboard");
        return modelAndView;
    }

    @RequestMapping(value = "/faq/write", method = RequestMethod.GET)
    public ModelAndView writeFAQ(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {
        modelAndView.setViewName("admin/faqForm");
        return modelAndView;
    }

    @RequestMapping(value = { "/faq/{currentPage}/search" }, method = RequestMethod.POST)
    public ModelAndView searchFaq(ModelAndView modelAndView, @RequestParam Map<String, Object> params,
            @PathVariable String currentPage) {
        int currentPageNum = Integer.parseInt(currentPage);
        if (currentPageNum < 1) {
            currentPageNum = 1;
        }
        params.put("currentPage", currentPageNum);
        params.put("pageScale", 5);
        String text = (String) params.get("SEARCH_TEXT");
        String searchtext = "%" + text + "%";
        params.put("SEARCH_TEXT", searchtext);
        Object faqList = searchService.getFAQWithSearch(params);
        modelAndView.addObject("resultMap", faqList);
        modelAndView.setViewName("/qna/faq");
        return modelAndView;
    }

    // announcement
    @RequestMapping(value = "/announcement/{currentPage}", method = RequestMethod.GET)
    public ModelAndView listAnnouncement(@RequestParam Map<String, Object> params, ModelAndView modelAndView,
            @PathVariable String currentPage) {
        int currentPageNum = Integer.parseInt(currentPage);
        if (currentPageNum < 1) {
            currentPageNum = 1;
        }
        params.put("currentPage", currentPageNum);
        params.put("pageScale", 5);
        Object resultMap = listService.getAnnoListWithPagination(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("announcement/announcement");
        return modelAndView;
    }

    @RequestMapping(value = "/announcement/{currentPage}/{category}", method = RequestMethod.GET)
    public ModelAndView listAnnouncementCategory(@RequestParam Map<String, Object> params,
            @PathVariable String category, ModelAndView modelAndView, @PathVariable String currentPage) {
        int currentPageNum = Integer.parseInt(currentPage);
        if (currentPageNum < 1) {
            currentPageNum = 1;
        }
        params.put("currentPage", currentPageNum);
        params.put("pageScale", 5);
        params.put("CATEGORY", category);
        Object resultMap = listService.getAnnoListWithPaginationAndCategory(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("announcement/announcement");
        return modelAndView;
    }

    @RequestMapping(value = "/announcement/board/{UID}", method = RequestMethod.GET)
    public ModelAndView announcementBoard(@RequestParam Map<String, Object> params, @PathVariable String UID,
            ModelAndView modelAndView) {
        params.put("UID", UID);
        Object resultMap = listService.selectAnnouncementUID(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("announcement/announcementboard");
        return modelAndView;
    }

    @RequestMapping(value = "/anno/write", method = RequestMethod.GET)
    public ModelAndView writeAnno(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {
        modelAndView.setViewName("admin/annoForm");
        return modelAndView;
    }

    @RequestMapping(value = { "/announcement/{currentPage}/search" }, method = RequestMethod.POST)
    public ModelAndView searchAnno(ModelAndView modelAndView, @RequestParam Map<String, Object> params,
            @PathVariable String currentPage) {
        int currentPageNum = Integer.parseInt(currentPage);
        if (currentPageNum < 1) {
            currentPageNum = 1;
        }
        params.put("currentPage", currentPageNum);
        params.put("pageScale", 5);
        String text = (String) params.get("SEARCH_TEXT");
        String searchtext = "%" + text + "%";
        params.put("SEARCH_TEXT", searchtext);
        Object faqList = searchService.getAnnoWithSearch(params);
        modelAndView.addObject("resultMap", faqList);
        modelAndView.setViewName("/announcement/announcement");
        return modelAndView;
    }
}