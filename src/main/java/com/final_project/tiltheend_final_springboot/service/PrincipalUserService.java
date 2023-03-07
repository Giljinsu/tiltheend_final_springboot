package com.final_project.tiltheend_final_springboot.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
// 필터체인으로 누가 구현을 해놓으면 인지하고 들림
import org.springframework.stereotype.Service;

import com.final_project.tiltheend_final_springboot.configuration.PrincipalUser;
import com.final_project.tiltheend_final_springboot.dao.CommonDao;

@Service
public class PrincipalUserService implements UserDetailsService {
    
    @Autowired
    CommonDao commonDao;

    @Override
    // url이 /login 일때 spring security가 호출
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        // query select with ID
        String sqlMapId = "login.getOne";
        Map<String,String> resultMap = (Map)commonDao.selectOne(sqlMapId, username);

        //session 등록
        PrincipalUser principalUser = new PrincipalUser(resultMap);
        return principalUser;
    }
    
}
