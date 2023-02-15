package com.final_project.tiltheend_final_springboot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ByPassController {
    @RequestMapping(value = {"/index"})
    public void main() {
        int i = 1;
    }

    @RequestMapping(value = {"/coordination/coordinationBoard"})
    public void coordinationBoard() {
        int i = 1;
    }
    @RequestMapping(value = {"/coordination/coordination"})
    public void coordination() {
        int i = 1;
    }

    @RequestMapping(value = {"/shoppingcart/shoppingcart"})
    public void shoppincart() {
        int i = 1;
    }

    @RequestMapping(value = {"/shop/shop"})
    public void shop() {
        int i = 1;
    }
    @RequestMapping(value = {"/shop/item_info"})
    public void item_info() {
        int i = 1;
    }

    @RequestMapping(value = {"/qna/qna"})
    public void qna() {
        int i = 1;
    }
    @RequestMapping(value = {"/qna/faq"})
    public void faq() {
        int i = 1;
    }

    @RequestMapping(value = {"/login/login"})
    public void login() {
        int i = 1;
    }
    @RequestMapping(value = {"/login/mypage"})
    public void mypage() {
        int i = 1;
    }
    @RequestMapping(value = {"/login/signup"})
    public void signup() {
        int i = 1;
    }
    @RequestMapping(value = {"/login/wishListPage"})
    public void wishListPage() {
        int i = 1;
    }

    @RequestMapping(value = {"/announcement/announcement"})
    public void announcement() {
        int i = 1;
    }
}
