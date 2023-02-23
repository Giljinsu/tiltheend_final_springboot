package com.final_project.tiltheend_final_springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.final_project.tiltheend_final_springboot.dao.CommonDao;

@Service
public class ListService {

    @Autowired
    CommonDao commonDao;

    public Object selectQNA(Object dataMap) {
        String sqlMapId = "List.selectQNA";
        Object result = commonDao.getList(sqlMapId, dataMap);
        return result;
    }

    public Object selectFAQ(Object dataMap) {
        String sqlMapId = "List.selectFAQ";
        Object result = commonDao.selectOne(sqlMapId, dataMap);
        return result;
    }

    public Object selectAnnouncement(Object dataMap) {
        String sqlMapId = "List.selectAnnouncement";
        Object result = commonDao.selectOne(sqlMapId, dataMap);
        return result;
    }

    public Object updateQNA(Object dataMap) {
        String sqlMapId = "List.updateQNA";
        Object result = commonDao.update(sqlMapId, dataMap);
        return result;
    }

    public Object updateFAQ(Object dataMap) {
        String sqlMapId = "List.updateFAQ";
        Object result = commonDao.update(sqlMapId, dataMap);
        return result;
    }

    public Object updateAnnouncement(Object dataMap) {
        String sqlMapId = "List.updateAnnouncement";
        Object result = commonDao.update(sqlMapId, dataMap);
        return result;
    }
}
