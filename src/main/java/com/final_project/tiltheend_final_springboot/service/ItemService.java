package com.final_project.tiltheend_final_springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.final_project.tiltheend_final_springboot.dao.CommonDao;

@Service
public class ItemService {
    @Autowired
    CommonDao commonDao;

    public Object selectItemWithUID(Object dataMap) {
        String sqlMapId = "item.selectitemwithuid";
        Object result = commonDao.getList(sqlMapId, dataMap);
        return result;
    }

    public Object selectReviewWithRate(Object dataMap) {
        String sqlMapId = "item.selectreview";
        Object result = commonDao.getList(sqlMapId, dataMap);
        return result;
    }
}
