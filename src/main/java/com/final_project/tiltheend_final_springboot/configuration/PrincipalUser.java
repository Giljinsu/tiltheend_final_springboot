package com.final_project.tiltheend_final_springboot.configuration;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

public class PrincipalUser implements UserDetails {
    //userDetails을 래핑한 authentication이 확인하는 프로세서로 하나하나  체크함
    // 
    private Map userInfo;
    private String userName;
    private String UID;

    public Map getUserInfo() {
        return userInfo;
    }

    public String getUserName() {
        return userName;
    }
    public String getUID() {
        return UID;
    }

    public PrincipalUser(Map userInfo) {
        this.userInfo = userInfo;
        int i = 1;
        this.userName = (String)userInfo.get("USERNAME");
        this.UID = (String)userInfo.get("UID");
    }
    @Override
    public Collection<GrantedAuthority> getAuthorities() {
        // 권한들
        Collection<GrantedAuthority> collections = new ArrayList<>();
        collections.add(new SimpleGrantedAuthority((String) userInfo.get("ROLE")));
        return collections;
    }


    @Override
    public String getPassword() {
        // TODO Auto-generated method stub
        return (String)userInfo.get("PW");
    }

    @Override
    public String getUsername() {
        
        return (String)userInfo.get("ID");
    }

    @Override
    public boolean isAccountNonExpired() {
        // 계정 만료 여부
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        // 계정 잠금여부(일시적으로 잠그고 싶을때)
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        //ex) 비밀번호 변경 기간 만료
        return true;
    }

    @Override
    public boolean isEnabled() {
        // 휴먼 계정 여부
        return true;
    }


    
}
