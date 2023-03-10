package com.final_project.tiltheend_final_springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.final_project.tiltheend_final_springboot.dao.CommonDao;

@Service
public class OrderListService {

    @Autowired
    CommonDao commonDao;
    public Object selectOrderListPageByUid(Object dataMap) {
        String sqlMapId = "orderList.selectjoinshoppingcartproduct";
        Object result = commonDao.selectList(sqlMapId, dataMap);
        return result;
    }
    public Object selectOrderListByUid(Object dataMap) {
        String sqlMapId = "orderList.selectjoinOrderListproduct";
        Object result = commonDao.selectList(sqlMapId, dataMap);
        return result;
    }
    public Object insertOrderList(Object dataMap) {
        String sqlMapId = "orderList.insertOrderList";
        Object result = commonDao.insert(sqlMapId, dataMap);
        return result;
    }
    public Object deleteOrderList(Object dataMap) {
        String sqlMapId = "orderList.delete";
        Object result = commonDao.delete(sqlMapId, dataMap);
        return result;
    }


}
