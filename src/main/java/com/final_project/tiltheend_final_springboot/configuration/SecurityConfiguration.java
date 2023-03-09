package com.final_project.tiltheend_final_springboot.configuration;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

// spring이 실행될때 알아서 호출함
@Configuration
public class SecurityConfiguration {
    @Bean // 클래스가 아닌 메소드를 인스턴스화 시킴
    public SecurityFilterChain filterChain(HttpSecurity httpSecurity) throws Exception {
        // None using csrf protection
        httpSecurity.csrf().disable();

        // url & roles : users url & roles
        httpSecurity.authorizeRequests()
                // .antMatchers("/").access("hasRole('ROLE_USER') or hasRole('ROLE_ADMIN')")
                // .antMatchers("/").authenticated() // 로그인 했는지 확인
                // .antMatchers("/admin").access("hasRole('ROLE_ADMIN')")//권한있는지 확인
                .antMatchers("/admin").authenticated()
                // .antMatchers("/manager/*").access("hasRole('ROLE_MANAGER') or
                // hasRole('ROLE_ADMIN')")
                .antMatchers("/admin").access("hasRole('ROLE_ADMIN')")
                .antMatchers("/shoppingcart/list").authenticated()
                .antMatchers("/coordination/write_coordination").authenticated()
                .antMatchers("/shop/cart/**").authenticated()
                .antMatchers("/admin/**").access("hasRole('ROLE_ADMIN')")
                .anyRequest().permitAll(); // 설정한 url 이외는 접근 가능

        // 로그인 대한 부분 /loginForm으로 연결
        httpSecurity.formLogin().loginPage("/login/loginForm")
                // .failureUrl("/loginForm?fail=true")
                .loginProcessingUrl("/login") //
                .defaultSuccessUrl("/");

        return httpSecurity.build();
    }

    @Bean
    public BCryptPasswordEncoder getBCryptPasswordEncorder() {
        return new BCryptPasswordEncoder();
    }
}
