package com.final_project.tiltheend_final_springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.final_project.tiltheend_final_springboot.dao.CommonDao;

@Service
public class LoginService {
    @Autowired
    CommonDao commonDao;

    public Object signUp(Object dataMap) {
        String sqlMapper = "login.signup";
        Object result =commonDao.insert(sqlMapper, dataMap);
        return result;
    }
    
    public Object getIds(Object dataMap) {
        String sqlMapper = "login.selectIds";
        Object result =commonDao.selectList(sqlMapper, dataMap);
        return result;
    }
    
    // public Object login(Object dataMap) {
    //     String sqlMapper = "login.getOne";
    //     Object result =commonDao.selectOne(sqlMapper, dataMap);
    //     return result;
    // }

}
