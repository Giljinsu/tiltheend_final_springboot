package com.final_project.tiltheend_final_springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.final_project.tiltheend_final_springboot.dao.CommonDao;

@Service
public class CoordinationService {

    @Autowired
    CommonDao commonDao;
    public Object getCordBoard(Object dataMap) {
        String sqlMapId = "coordination.select";
        Object result = commonDao.select(sqlMapId, dataMap);
        return result;
    }
    public Object insertCord(Object dataMap) {
        String sqlMapId = "coordination.insert";
        Object result = commonDao.insert(sqlMapId, dataMap);
        return result;
    }
    public Object updateCord(Object dataMap) {
        String sqlMapId = "coordination.update";
        Object result = commonDao.update(sqlMapId, dataMap);
        return result;
    }
    public Object deleteCord(Object dataMap) {
        String sqlMapId = "coordination.delete";
        Object result = commonDao.delete(sqlMapId, dataMap);
        return result;
    }
}