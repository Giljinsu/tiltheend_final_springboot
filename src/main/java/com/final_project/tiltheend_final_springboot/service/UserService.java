package com.final_project.tiltheend_final_springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.final_project.tiltheend_final_springboot.dao.CommonDao;

@Service
public class UserService {

    @Autowired
    CommonDao commonDao;
    public Object selectUserOne(Object dataMap) {
        String sqlMapId = "user.selectOne";
        Object result = commonDao.selectOne(sqlMapId, dataMap);
        return result;
    }

    public Object getUserList() {
        String sqlMapId = "user.selectAll";
        Object result = commonDao.selectList(sqlMapId);
        return result;
    }


}
