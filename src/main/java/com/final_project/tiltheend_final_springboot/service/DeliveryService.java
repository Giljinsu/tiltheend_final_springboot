package com.final_project.tiltheend_final_springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.final_project.tiltheend_final_springboot.dao.CommonDao;


@Service
public class DeliveryService {
    @Autowired
    CommonDao commonDao;

    public Object selectOrderListByUid(Object dataMap) {
        String sqlMapId = "";
        Object result = commonDao.selectList(sqlMapId, dataMap);
        return result;
    }

    
    public Object insertDeliveryInfo(Object dataMap) {
        String sqlMapId = "delivery.insertDelivery";
        Object result = commonDao.insert(sqlMapId, dataMap);
        return result;
    }
}
