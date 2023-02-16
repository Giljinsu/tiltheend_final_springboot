package com.final_project.tiltheend_final_springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.final_project.tiltheend_final_springboot.dao.CommonDao;

@Service
public class ShopService {

  @Autowired
  CommonDao commonDao;

  public Object getShop(Object dataMap) {
    String sqlMapId = "shop.select";
    Object result = commonDao.select(sqlMapId, dataMap);

  }

}
