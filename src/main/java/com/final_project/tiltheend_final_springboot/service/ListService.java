package com.final_project.tiltheend_final_springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.final_project.tiltheend_final_springboot.dao.CommonDao;

@Service
public class ListService {

    @Autowired
    CommonDao commonDao;

    // QNA
    public Object selectQNA(Object dataMap) {

        String sqlMapId = "List.selectQNA";
        Object result = commonDao.getList(sqlMapId, dataMap);
        return result;
    }

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

    public Object updateQNA(Object dataMap) {
        String sqlMapId = "List.updateQNA";
        Object result = commonDao.update(sqlMapId, dataMap);
        return result;
    }

    // FAQ
    public Object selectFAQ(Object dataMap) {
        String sqlMapId = "List.selectFAQ";
        Object result = commonDao.getList(sqlMapId, dataMap);
        return result;
    }

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

    public Object updateFAQ(Object dataMap) {
        String sqlMapId = "List.updateFAQ";
        Object result = commonDao.update(sqlMapId, dataMap);
        return result;
    }

    // Announcement
    public Object selectAnnouncement(Object dataMap) {
        String sqlMapId = "List.selectAnnouncement";
        Object result = commonDao.getList(sqlMapId, dataMap);
        return result;
    }

    public Object selectAnnouncementWithJoin(Object dataMap) {
        String sqlMapId = "List.selectAnnouncementwithjoin";
        Object result = commonDao.getList(sqlMapId, dataMap);
        return result;
    }

    public Object updateAnnouncement(Object dataMap) {
        String sqlMapId = "List.updateAnnouncement";
        Object result = commonDao.update(sqlMapId, dataMap);
        return result;
    }
}
