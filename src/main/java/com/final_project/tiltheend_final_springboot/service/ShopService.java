package com.final_project.tiltheend_final_springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.final_project.tiltheend_final_springboot.dao.CommonDao;

@Service
public class ShopService {

  @Autowired
  CommonDao commonDao;

  public Object getProductList(Object dataMap) {
    String sqlMapId = "shop.selectAll";
    Object result = commonDao.selectOne(sqlMapId, dataMap);
    return result;
  }

  public Object getBestsellingProductList(Object dataMap) {
    String sqlMapId = "shop.selectBestsellingProductList";
    Object result = commonDao.selectOne(sqlMapId, dataMap);
    return result;
  }

  public Object insertProduct(Object dataMap) {
    String sqlMapId = "shop.insertProduct";
    Object result = commonDao.insert(sqlMapId, dataMap);
    return result;
  }

  public Object updateProduct(Object dataMap) {
    String sqlMapId = "shop.updateProduct";
    Object result = commonDao.update(sqlMapId, dataMap);
    return result;
  }

  public Object deleteProduct(Object dataMap) {
    String sqlMapId = "shop.deleteProduct";
    Object result = commonDao.delete(sqlMapId, dataMap);
    return result;
  }

}
