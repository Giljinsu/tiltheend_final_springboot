package com.final_project.tiltheend_final_springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.final_project.tiltheend_final_springboot.dao.CommonDao;

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


}
