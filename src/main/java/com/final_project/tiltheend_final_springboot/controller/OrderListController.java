package com.final_project.tiltheend_final_springboot.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.final_project.tiltheend_final_springboot.service.DeliveryService;
import com.final_project.tiltheend_final_springboot.service.OrderListService;
import com.final_project.tiltheend_final_springboot.service.UserService;
import com.final_project.tiltheend_final_springboot.utils.CommonUtils;

@Controller
@RequestMapping(value = "/orderlist")
public class OrderListController {
    
    @Autowired
    UserService userService;

    @Autowired
    DeliveryService deliveryService;

    @Autowired
    OrderListService orderListService;

    @RequestMapping(value = "/save" , method=RequestMethod.POST)
    public ModelAndView saveDelivery(ModelAndView modelAndView, @RequestParam Map<String,Object> params ) {
        CommonUtils commonUtils = new CommonUtils();
        String delivery_id = commonUtils.makeUuid();
        params.put("DELIVERY_ID", delivery_id);
        deliveryService.insertDeliveryInfo(params);
        // orderListSerive.insert
        return modelAndView;
    }

    @RequestMapping(value = "/list", method=RequestMethod.POST)
    public ModelAndView list(ModelAndView modelAndView, @RequestParam Map<String,Object> params ) {
        Object user = userService.selectUserOne(params);
        Object orderList = orderListService.selectOrderListByUid(params);
        modelAndView.addObject("USER", user);
        modelAndView.addObject("resultMap", orderList);
        modelAndView.setViewName("/shoppingcart/purchasePage");
        return modelAndView;
    }
    
}
