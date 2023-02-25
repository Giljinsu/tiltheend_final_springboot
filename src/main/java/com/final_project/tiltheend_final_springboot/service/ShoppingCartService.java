package com.final_project.tiltheend_final_springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.final_project.tiltheend_final_springboot.dao.CommonDao;

@Service
public class ShoppingCartService {

    @Autowired
    CommonDao commonDao;
    public Object selectCartList(Object dataMap) {
        String sqlMapId = "shoppingcart.select";
        Object result = commonDao.selectList(sqlMapId, dataMap);
        return result;
    }
    public Object selectCartListAndFiles(Object dataMap) {
        String sqlMapId = "shoppingcart.selectfileshoppingcartwithUID";
        Object result = commonDao.selectList(sqlMapId, dataMap);
        return result;
    }

}
