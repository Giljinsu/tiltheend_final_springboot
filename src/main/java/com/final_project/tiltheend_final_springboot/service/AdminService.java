package com.final_project.tiltheend_final_springboot.service;

import org.springframework.beans.factory.annotation.Autowire;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.final_project.tiltheend_final_springboot.dao.CommonDao;

@Service
public class AdminService {

    @Autowired
    CommonDao commonDao;

    public Object selectAdmin(Object dataMap) {
        String sqlMapId = "admin.selectAdmin";
        Object result = commonDao.getList(sqlMapId, dataMap);
        return result;
    }

}
