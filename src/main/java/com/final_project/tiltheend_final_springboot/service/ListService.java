package com.final_project.tiltheend_final_springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.final_project.tiltheend_final_springboot.dao.CommonDao;

@Service
public class ListService {

    @Autowired
    CommonDao commonDao;

    // QNA

    public Object selectQNAWithJoin(Object dataMap) {
        String sqlMapId = "List.selectQNAwithjoin";
        Object result = commonDao.getList(sqlMapId, dataMap);
        return result;
    }

    public Object selectQNACategory(Object dataMap) {
        String sqlMapId = "List.selectQNACategory";
        Object result = commonDao.getList(sqlMapId, dataMap);
        return result;
    }

    public Object selectQNAUID(Object dataMap) {
        String sqlMapId = "List.selectQNAUID";
        Object result = commonDao.getList(sqlMapId, dataMap);
        return result;
    }

    public Object searchQNA(Object dataMap) {
        String sqlMapId = "List.searchQNA";
        Object result = commonDao.getList(sqlMapId, dataMap);
        return result;
    }

    public Object updateQNA(Object dataMap) {
        String sqlMapId = "List.updateQNA";
        Object result = commonDao.update(sqlMapId, dataMap);
        return result;
    }

    public Object insertQNA(Object dataMap) {
        String sqlMapId = "List.insertQNA";
        Object result = commonDao.insert(sqlMapId, dataMap);
        return result;
    }

    // FAQ

    public Object selectFAQWithJoin(Object dataMap) {
        String sqlMapId = "List.selectFAQwithjoin";
        Object result = commonDao.getList(sqlMapId, dataMap);
        return result;
    }

    public Object selectFAQCategory(Object dataMap) {
        String sqlMapId = "List.selectFAQCategory";
        Object result = commonDao.getList(sqlMapId, dataMap);
        return result;
    }

    public Object selectFAQUID(Object dataMap) {
        String sqlMapId = "List.selectFAQUID";
        Object result = commonDao.getList(sqlMapId, dataMap);
        return result;
    }

    public Object updateFAQ(Object dataMap) {
        String sqlMapId = "List.updateFAQ";
        Object result = commonDao.update(sqlMapId, dataMap);
        return result;
    }

    // Announcement

    public Object selectAnnouncementWithJoin(Object dataMap) {
        String sqlMapId = "List.selectAnnouncementwithjoin";
        Object result = commonDao.getList(sqlMapId, dataMap);
        return result;
    }

    public Object selectAnnouncementCategory(Object dataMap) {
        String sqlMapId = "List.selectAnnouncementCategory";
        Object result = commonDao.getList(sqlMapId, dataMap);
        return result;
    }

    public Object selectAnnouncementUID(Object dataMap) {
        String sqlMapId = "List.selectAnnouncementUID";
        Object result = commonDao.getList(sqlMapId, dataMap);
        return result;
    }

    public Object updateAnnouncement(Object dataMap) {
        String sqlMapId = "List.updateAnnouncement";
        Object result = commonDao.update(sqlMapId, dataMap);
        return result;
    }
}
