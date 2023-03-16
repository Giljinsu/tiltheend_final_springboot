package com.final_project.tiltheend_final_springboot.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.final_project.tiltheend_final_springboot.dao.CommonDao;
import com.final_project.tiltheend_final_springboot.utils.Paginations;

@Service
public class SearchService {
    @Autowired
    CommonDao commonDao;

    public Object searchProduct(Object dataMap) {
        String sqlMapId = "search.product";
        Object result = commonDao.getList(sqlMapId, dataMap);
        return result;
    }

    public Object searchCoordination(Object dataMap) {
        String sqlMapId = "search.coordination";
        Object result = commonDao.getList(sqlMapId, dataMap);
        return result;
    }

    public Object searchFaq(Object dataMap) {
        String sqlMapId = "search.faq";
        Object result = commonDao.getList(sqlMapId, dataMap);
        return result;
    }

    public Object searchQna(Object dataMap) {
        String sqlMapId = "search.qna";
        Object result = commonDao.getList(sqlMapId, dataMap);
        return result;
    }

    public Object searchAnno(Object dataMap) {
        String sqlMapId = "search.anno";
        Object result = commonDao.getList(sqlMapId, dataMap);
        return result;
    }

    public Object searchFaqWithUser(Object dataMap) {
        String sqlMapId = "search.faqwithuser";
        Object result = commonDao.getList(sqlMapId, dataMap);
        return result;
    }

    public Object searchQnaWithUser(Object dataMap) {
        String sqlMapId = "search.qnawithuser";
        Object result = commonDao.getList(sqlMapId, dataMap);
        return result;
    }

    public Object searchAnnoWithUser(Object dataMap) {
        String sqlMapId = "search.annowithuser";
        Object result = commonDao.getList(sqlMapId, dataMap);
        return result;
    }

    public Object getTotalQna(Object dataMap) {
        String sqlMapId = "search.selectQnaTotal";
        Object result = commonDao.selectOne(sqlMapId, dataMap);
        return result;
    }

    public Object getTotalFaq(Object dataMap) {
        String sqlMapId = "search.selectFaqTotal";
        Object result = commonDao.selectOne(sqlMapId, dataMap);
        return result;
    }

    public Object getTotalAnno(Object dataMap) {
        String sqlMapId = "search.selectAnnoTotal";
        Object result = commonDao.selectOne(sqlMapId, dataMap);
        return result;
    }

    public Object getQNAWithSearch(Object dataMap) {
        Map<String, Object> result = new HashMap<String, Object>();
        int totalCount = (int) this.getTotalQna(dataMap);
        int currentPage = (int) ((Map<String, Object>) dataMap).get("currentPage");
        int pageScale = (int) ((Map<String, Object>) dataMap).get("pageScale");
        Paginations paginations = new Paginations(totalCount, currentPage, pageScale);
        result.put("paginations", paginations);
        ((Map<String, Object>) dataMap).put("pageBegin", paginations.getPageBegin());
        result.put("resultList", this.searchQnaWithUser(dataMap));
        return result;
    }

    public Object getFAQWithSearch(Object dataMap) {
        Map<String, Object> result = new HashMap<String, Object>();
        int totalCount = (int) this.getTotalFaq(dataMap);
        int currentPage = (int) ((Map<String, Object>) dataMap).get("currentPage");
        int pageScale = (int) ((Map<String, Object>) dataMap).get("pageScale");
        Paginations paginations = new Paginations(totalCount, currentPage, pageScale);
        result.put("paginations", paginations);
        ((Map<String, Object>) dataMap).put("pageBegin", paginations.getPageBegin());
        result.put("resultList", this.searchFaqWithUser(dataMap));
        return result;
    }

    public Object getAnnoWithSearch(Object dataMap) {
        Map<String, Object> result = new HashMap<String, Object>();
        int totalCount = (int) this.getTotalAnno(dataMap);
        int currentPage = (int) ((Map<String, Object>) dataMap).get("currentPage");
        int pageScale = (int) ((Map<String, Object>) dataMap).get("pageScale");
        Paginations paginations = new Paginations(totalCount, currentPage, pageScale);
        result.put("paginations", paginations);
        ((Map<String, Object>) dataMap).put("pageBegin", paginations.getPageBegin());
        result.put("resultList", this.searchAnnoWithUser(dataMap));
        return result;
    }

}
