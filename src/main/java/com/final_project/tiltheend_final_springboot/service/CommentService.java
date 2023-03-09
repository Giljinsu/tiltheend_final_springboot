package com.final_project.tiltheend_final_springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.final_project.tiltheend_final_springboot.dao.CommonDao;

@Service
public class CommentService {

    @Autowired
    CommonDao commonDao;

    @Autowired
    ListService listService;

    public Object selectCommentOne(Object dataMap) {
        String sqlMapId = "comment.selectcomments";
        Object result = commonDao.selectOne(sqlMapId, dataMap);
        return result;
    }

    public Object selectCommentOneWithoutUser(Object dataMap) {
        String sqlMapId = "comment.selectcommentwithoutuser";
        Object result = commonDao.selectOne(sqlMapId, dataMap);
        return result;
    }

    public Object selectComment(Object dataMap) {
        String sqlMapId = "comment.selectcomments";
        Object result = commonDao.getList(sqlMapId, dataMap);
        return result;
    }

    public Object countComments(Object dataMap) {
        String sqlMapId = "comment.countcomments";
        Object result = commonDao.selectOne(sqlMapId, dataMap);
        return result;
    }

    public Object insertComment(Object dataMap) {
        String sqlMapId = "comment.insertcomment";
        Object result = commonDao.insert(sqlMapId, dataMap);
        return result;
    }

    public Object insertComment_Qna(Object dataMap) {
        Object result = listService.updateStatus(dataMap);
        String sqlMapId = "comment.insertcommentUSERUID";
        result = commonDao.insert(sqlMapId, dataMap);
        return result;
    }

    public Object deleteComment_Qna(Object dataMap) {
        Object result = listService.updateStatus2(dataMap);
        String sqlMapId = "comment.delete";
        result = commonDao.delete(sqlMapId, dataMap);
        return result;
    }

    public Object deleteComment(Object dataMap) {
        String sqlMapId = "comment.delete";
        Object result = commonDao.delete(sqlMapId, dataMap);
        return result;
    }

    public Object deleteCommentOne(Object dataMap) {
        String sqlMapId = "comment.deleteOne";
        Object result = commonDao.delete(sqlMapId, dataMap);
        return result;
    }
}
