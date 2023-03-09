package com.final_project.tiltheend_final_springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.final_project.tiltheend_final_springboot.dao.CommonDao;

@Service
public class ShopService {

  @Autowired
  CommonDao commonDao;

  public Object getProductList() {
    String sqlMapId = "shop.selectAll";
    Object result = commonDao.selectList(sqlMapId);
    return result;
  }

  public Object getProductList(Object dataMap) {
    String sqlMapId = "shop.selectCategory";
    Object result = commonDao.selectList(sqlMapId, dataMap);
    return result;
  }

  public Object getProductSalesVolume(Object dataMap) {
    String sqlMapId = "shop.selectVolume";
    Object result = commonDao.selectOne(sqlMapId, dataMap);
    return result;
  }

  public Object getBestsellingProductList() {
    String sqlMapId = "shop.selectBestsellingProductList";
    Object result = commonDao.selectList(sqlMapId);
    return result;
  }

  public Object getBestsellingProductList(Object dataMap) {
    String sqlMapId = "shop.selectBestsellingProductListCategory";
    Object result = commonDao.selectList(sqlMapId, dataMap);
    return result;
  }

  public Object getBestsellingProductList18() {
    String sqlMapId = "shop.selectBestsellingProductList18";
    Object result = commonDao.selectList(sqlMapId);
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

  public Object updateProductSalesVolume(Object dataMap) {
    String sqlMapId = "shop.updateProductVolume";
    Object result = commonDao.update(sqlMapId, dataMap);
    return result;
  }

  public Object deleteProduct(Object dataMap) {
    String sqlMapId = "shop.deleteProduct";
    Object result = commonDao.delete(sqlMapId, dataMap);
    return result;
  }

}
