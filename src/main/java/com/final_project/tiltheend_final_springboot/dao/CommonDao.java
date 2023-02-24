package com.final_project.tiltheend_final_springboot.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

@Repository
@Component
public class CommonDao {

    @Autowired
    private SqlSessionTemplate sessionTemplate;

    public Object selectOne(String sqlMapId, Object dataMap) {
        Object result = sessionTemplate.selectOne(sqlMapId, dataMap);
        return result;
    }

    public Object selectList(String sqlMapId) {
        Object result = sessionTemplate.selectList(sqlMapId);
        return result;
    }
    public Object selectList(String sqlMapId, Object dataMap) {
        Object result = sessionTemplate.selectList(sqlMapId, dataMap);
        return result;
    }

    public Object update(String sqlMapId, Object dataMap) {
        Object result = sessionTemplate.update(sqlMapId, dataMap);
        return result;
    }

    public Object delete(String sqlMapId, Object dataMap) {
        Object result = sessionTemplate.delete(sqlMapId, dataMap);
        return result;
    }

    public Object insert(String sqlMapId, Object dataMap) {
        Object result = sessionTemplate.insert(sqlMapId, dataMap);
        return result;
    }

    public Object getList(String sqlMapId, Object dataMap) {
        Object result = sessionTemplate.selectList(sqlMapId);
        return result;
    }

}
