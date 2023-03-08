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

    public Object selectProductIdAndCountWithUID(Object dataMap) {
        String sqlMapId = "shoppingcart.selectProductIdAndCountWithUID";
        Object result = commonDao.selectList(sqlMapId, dataMap);
        return result;
    }

    public Object selectCartListAndFiles(Object dataMap) {
        String sqlMapId = "shoppingcart.selectfileshoppingcartwithUID";
        Object result = commonDao.selectList(sqlMapId, dataMap);
        return result;
    }

    public Object deleteShoppingCartList(Object dataMap) {
        String sqlMapId = "shoppingcart.delete";
        Object result = commonDao.delete(sqlMapId, dataMap);
        return result;
    }

    public Object deleteAndSelectList(Object dataMap) {
        Object result = this.deleteShoppingCartList(dataMap);
        result = this.selectCartListAndFiles(dataMap);
        return result;
    }

    public Object insertShoppingcart(Object dataMap) {
        String sqlMapId = "shoppingcart.insertshoppingcart";
        Object result = commonDao.insert(sqlMapId, dataMap);
        return result;
    }

}
