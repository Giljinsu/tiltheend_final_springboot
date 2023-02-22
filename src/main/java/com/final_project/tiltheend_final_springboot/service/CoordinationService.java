package com.final_project.tiltheend_final_springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.final_project.tiltheend_final_springboot.dao.CommonDao;

@Service
public class CoordinationService {

    @Autowired
    CommonDao commonDao;

    @Autowired
    FilesService filesService;
    public Object selectCordOne(Object dataMap) {
        String sqlMapId = "coordination.select";
        Object result = commonDao.selectOne(sqlMapId, dataMap);
        return result;
    }
    public Object insertCord(Object dataMap) {
        String sqlMapId = "coordination.insert";
        Object result = commonDao.insert(sqlMapId, dataMap);
        return result;
    }
    public Object updateCord(Object dataMap) {
        String sqlMapId = "coordination.update";
        Object result = commonDao.update(sqlMapId, dataMap);
        return result;
    }
    public Object deleteCord(Object dataMap) {
        String sqlMapId = "coordination.delete";
        Object result = commonDao.delete(sqlMapId, dataMap);
        return result;
    }
    public Object getList() {
        String sqlMapId = "coordination.getlistwithjoin";
        Object result = commonDao.selectList(sqlMapId);
        return result;
    }

    public Object insertCordAndGetList(Object dataMap) {
        String sqlMapId = "coordination.insert";
        Object result = commonDao.insert(sqlMapId, dataMap);
        result = this.getList();
        return result;
    }

    public Object insertFilesAndCordAndGetList(Object dataMap) {
        Object result = filesService.insertFile(dataMap);
        result = this.insertCord(dataMap);
        result = this.getList();
        return result;
    }

    public Object deleteCordAndFileAndGetList(Object dataMap) {
        Object result = filesService.deleteFile(dataMap);
        result = this.deleteCord(dataMap);
        result = this.getList();
        return result;
    }
}
