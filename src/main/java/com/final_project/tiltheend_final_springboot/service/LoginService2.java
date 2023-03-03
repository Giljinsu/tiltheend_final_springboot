package com.final_project.tiltheend_final_springboot.service;

import java.util.ArrayList;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.final_project.tiltheend_final_springboot.dao.CommonDao;

@Service
public class LoginService2 {

  @Autowired
  CommonDao commonDao;

  public String getUserPw(Object dataMap) {
    String sqlMapId = "login2.selectOne";
    Object result = commonDao.selectOne(sqlMapId, dataMap);
    String password = ((Map<String, String>) result).get("PW");
    return password;
  }

  public boolean userIsAuthenticated(Map<String, Object> dataMap) {
    if (getUserPw(dataMap).equals(dataMap.get("pw"))) {
      return true;
    } else {
      return false;
    }
  }

  public Object insertUser(Object dataMap) {
    String sqlMapId = "login2.insertUser";
    Object result = commonDao.insert(sqlMapId, dataMap);
    return result;
  }

  public Object updateUser(Object dataMap) {
    String sqlMapId = "login2.updateUser";
    Object result = commonDao.update(sqlMapId, dataMap);
    return result;
  }

  public Object deleteUser(Object dataMap) {
    String sqlMapId = "login2.deleteUser";
    Object result = commonDao.delete(sqlMapId, dataMap);
    return result;
  }

}
