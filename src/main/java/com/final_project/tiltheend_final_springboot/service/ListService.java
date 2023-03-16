package com.final_project.tiltheend_final_springboot.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.final_project.tiltheend_final_springboot.dao.CommonDao;
import com.final_project.tiltheend_final_springboot.utils.Paginations;

@Service
public class ListService {

    @Autowired
    CommonDao commonDao;

    // QNA

    public Object selectQNAWithJoin(Object dataMap) {
        String sqlMapId = "List.selectQNAwithjoin";
        Object result = commonDao.selectList(sqlMapId, dataMap);
        return result;
    }

    public Object getQNAListWithPagination(Object dataMap) {
        Map<String, Object> result = new HashMap<String, Object>();
        int totalCount = (int) this.getTotalQna(dataMap);
        int currentPage = (int) ((Map<String, Object>) dataMap).get("currentPage");
        int pageScale = (int) ((Map<String, Object>) dataMap).get("pageScale");
        Paginations paginations = new Paginations(totalCount, currentPage, pageScale);
        result.put("paginations", paginations);
        ((Map<String, Object>) dataMap).put("pageBegin", paginations.getPageBegin());
        result.put("resultList", this.selectQNAWithJoin(dataMap));
        return result;
    }

    public Object getTotalQna(Object dataMap) {
        String sqlMapId = "List.selectQnaTotal";
        Object result = commonDao.selectOne(sqlMapId, dataMap);
        return result;
    }

    public Object selectQNACategory(Object dataMap) {
        String sqlMapId = "List.selectQNACategory";
        Object result = commonDao.getList(sqlMapId, dataMap);
        return result;
    }

    public Object getQNAListWithPaginationAndCategory(Object dataMap) {
        Map<String, Object> result = new HashMap<String, Object>();
        int totalCount = (int) this.getTotalQna(dataMap);
        int currentPage = (int) ((Map<String, Object>) dataMap).get("currentPage");
        int pageScale = (int) ((Map<String, Object>) dataMap).get("pageScale");
        Paginations paginations = new Paginations(totalCount, currentPage, pageScale);
        result.put("paginations", paginations);
        ((Map<String, Object>) dataMap).put("pageBegin", paginations.getPageBegin());
        result.put("resultList", this.selectQNACategory(dataMap));
        return result;
    }

    public Object selectQNAUID(Object dataMap) {
        String sqlMapId = "List.selectQNAUID";
        Object result = commonDao.selectOne(sqlMapId, dataMap);
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

    public Object insertQNAAndSelectQNA(Object dataMap) {
        this.insertQNA(dataMap);
        Object result = this.getQNAListWithPagination(dataMap);
        return result;
    }

    // 답변완료로 상태변경 - qna댓글 달아줄때
    public Object updateStatus(Object dataMap) {
        String sqlMapId = "List.updatestatus";
        Object result = commonDao.update(sqlMapId, dataMap);
        return result;
    }

    // 답변대기로 상태변경 - qna댓글 삭제할때
    public Object updateStatus2(Object dataMap) {
        String sqlMapId = "List.updatestatus2";
        Object result = commonDao.update(sqlMapId, dataMap);
        return result;
    }

    // FAQ

    public Object selectFAQ(Object dataMap) {
        String sqlMapId = "List.selectFAQ";
        Object result = commonDao.selectOne(sqlMapId, dataMap);
        return result;
    }

    public Object selectFAQWithJoin(Object dataMap) {
        String sqlMapId = "List.selectFAQwithjoin";
        Object result = commonDao.getList(sqlMapId, dataMap);
        return result;
    }

    public Object getFAQListWithPagination(Object dataMap) {
        Map<String, Object> result = new HashMap<String, Object>();
        int totalCount = (int) this.getTotalFAQ(dataMap);
        int currentPage = (int) ((Map<String, Object>) dataMap).get("currentPage");
        int pageScale = (int) ((Map<String, Object>) dataMap).get("pageScale");
        Paginations paginations = new Paginations(totalCount, currentPage, pageScale);
        result.put("paginations", paginations);
        ((Map<String, Object>) dataMap).put("pageBegin", paginations.getPageBegin());
        result.put("resultList", this.selectFAQWithJoin(dataMap));
        return result;
    }

    public Object getTotalFAQ(Object dataMap) {
        String sqlMapId = "List.selectFaqTotal";
        Object result = commonDao.selectOne(sqlMapId, dataMap);
        return result;
    }

    public Object selectFAQCategory(Object dataMap) {
        String sqlMapId = "List.selectFAQCategory";
        Object result = commonDao.getList(sqlMapId, dataMap);
        return result;
    }

    public Object getFAQListWithPaginationAndCategory(Object dataMap) {
        Map<String, Object> result = new HashMap<String, Object>();
        int totalCount = (int) this.getTotalFAQ(dataMap);
        int currentPage = (int) ((Map<String, Object>) dataMap).get("currentPage");
        int pageScale = (int) ((Map<String, Object>) dataMap).get("pageScale");
        Paginations paginations = new Paginations(totalCount, currentPage, pageScale);
        result.put("paginations", paginations);
        ((Map<String, Object>) dataMap).put("pageBegin", paginations.getPageBegin());
        result.put("resultList", this.selectFAQCategory(dataMap));
        return result;
    }

    public Object selectFAQUID(Object dataMap) {
        String sqlMapId = "List.selectFAQUID";
        Object result = commonDao.selectOne(sqlMapId, dataMap);
        return result;
    }

    public Object updateFAQ(Object dataMap) {
        String sqlMapId = "List.updateFAQ";
        Object result = commonDao.update(sqlMapId, dataMap);
        return result;
    }

    public Object deleteFAQ(Object dataMap) {
        String sqlMapId = "List.deleteFAQ";
        Object result = commonDao.delete(sqlMapId, dataMap);
        return result;
    }

    public Object insertFAQ(Object dataMap) {
        String sqlMapId = "List.insertFAQ";
        Object result = commonDao.insert(sqlMapId, dataMap);
        return result;
    }

    // Announcement

    public Object selectAnnouncement(Object dataMap) {
        String sqlMapId = "List.selectAnnouncement";
        Object result = commonDao.selectOne(sqlMapId, dataMap);
        return result;
    }

    public Object selectAnnouncementWithJoin(Object dataMap) {
        String sqlMapId = "List.selectAnnouncementwithjoin";
        Object result = commonDao.getList(sqlMapId, dataMap);
        return result;
    }

    public Object getAnnoListWithPagination(Object dataMap) {
        Map<String, Object> result = new HashMap<String, Object>();
        int totalCount = (int) this.getTotalAnno(dataMap);
        int currentPage = (int) ((Map<String, Object>) dataMap).get("currentPage");
        int pageScale = (int) ((Map<String, Object>) dataMap).get("pageScale");
        Paginations paginations = new Paginations(totalCount, currentPage, pageScale);
        result.put("paginations", paginations);
        ((Map<String, Object>) dataMap).put("pageBegin", paginations.getPageBegin());
        result.put("resultList", this.selectAnnouncementWithJoin(dataMap));
        return result;
    }

    public Object getTotalAnno(Object dataMap) {
        String sqlMapId = "List.selectAnnoTotal";
        Object result = commonDao.selectOne(sqlMapId, dataMap);
        return result;
    }

    public Object getAnnoListWithPaginationAndCategory(Object dataMap) {
        Map<String, Object> result = new HashMap<String, Object>();
        int totalCount = (int) this.getTotalAnno(dataMap);
        int currentPage = (int) ((Map<String, Object>) dataMap).get("currentPage");
        int pageScale = (int) ((Map<String, Object>) dataMap).get("pageScale");
        Paginations paginations = new Paginations(totalCount, currentPage, pageScale);
        result.put("paginations", paginations);
        ((Map<String, Object>) dataMap).put("pageBegin", paginations.getPageBegin());
        result.put("resultList", this.selectAnnouncementCategory(dataMap));
        return result;
    }

    public Object selectAnnouncementCategory(Object dataMap) {
        String sqlMapId = "List.selectAnnouncementCategory";
        Object result = commonDao.getList(sqlMapId, dataMap);
        return result;
    }

    public Object selectAnnouncementUID(Object dataMap) {
        String sqlMapId = "List.selectAnnouncementUID";
        Object result = commonDao.selectOne(sqlMapId, dataMap);
        return result;
    }

    public Object updateAnnouncement(Object dataMap) {
        String sqlMapId = "List.updateAnnouncement";
        Object result = commonDao.update(sqlMapId, dataMap);
        return result;
    }

    public Object deleteAnnouncement(Object dataMap) {
        String sqlMapId = "List.deleteAnnouncement";
        Object result = commonDao.delete(sqlMapId, dataMap);
        return result;
    }

    public Object insertAnnouncement(Object dataMap) {
        String sqlMapId = "List.insertAnnouncement";
        Object result = commonDao.insert(sqlMapId, dataMap);
        return result;
    }
}
