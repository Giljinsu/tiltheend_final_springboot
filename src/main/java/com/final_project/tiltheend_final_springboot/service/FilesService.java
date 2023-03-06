package com.final_project.tiltheend_final_springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.final_project.tiltheend_final_springboot.dao.CommonDao;

@Service
public class FilesService {

    @Autowired
    CommonDao commonDao;
    public Object selectFileOne(Object dataMap) {
        String sqlMapId = "files.selectone";
        Object result = commonDao.selectOne(sqlMapId, dataMap);
        return result;
    }
    public Object selectFiles(Object dataMap) {
        String sqlMapId = "files.select";
        Object result = commonDao.selectList(sqlMapId, dataMap);
        return result;
    }
    public Object insertFile(Object dataMap) {
        String sqlMapId = "files.insert";
        Object result = commonDao.insert(sqlMapId, dataMap);
        return result;
    }
    public Object updateFile(Object dataMap) {
        String sqlMapId = "files.update";
        Object result = commonDao.update(sqlMapId, dataMap);
        return result;
    }
    
    public Object deleteFile(Object dataMap) {
        String sqlMapId = "files.delete";
        Object result = commonDao.delete(sqlMapId, dataMap);
        return result;
    }
    public Object getList() {
        String sqlMapId = "coordination.getlist";
        Object result = commonDao.selectList(sqlMapId);
        return result;
    }


}
