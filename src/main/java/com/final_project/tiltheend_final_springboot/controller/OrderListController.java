package com.final_project.tiltheend_final_springboot.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.final_project.tiltheend_final_springboot.service.DeliveryService;
import com.final_project.tiltheend_final_springboot.service.OrderListService;
import com.final_project.tiltheend_final_springboot.service.UserService;
import com.final_project.tiltheend_final_springboot.service.ShopService;
import com.final_project.tiltheend_final_springboot.service.ShoppingCartService;
import com.final_project.tiltheend_final_springboot.utils.CommonUtils;

@Controller
@RequestMapping(value = "/orderlist")
public class OrderListController {

    @Autowired
    ShopService shopService;
    
    @Autowired
    UserService userService;

    @Autowired
    DeliveryService deliveryService;
    
    @Autowired
    ShoppingCartService shoppingcart;
    
    @Autowired
    OrderListService orderListService;

    @RequestMapping(value = "/save" , method=RequestMethod.POST)
    public ModelAndView saveDelivery(ModelAndView modelAndView, @RequestParam Map<String,Object> params ) {
        CommonUtils commonUtils = new CommonUtils();
        String delivery_id = commonUtils.makeUuid();
        params.put("DELIVERY_ID", delivery_id);
        deliveryService.insertDeliveryInfo(params);

        List resultList = new ArrayList<>();
        HashMap<String, Object> hashMap;
        ArrayList result = (ArrayList)shoppingcart.selectProductIdAndCountWithUID(params);
        for(int i=0; i<result.size(); i++) {
            HashMap<String, Object> resultMap = (HashMap)result.get(i);
            
            // 주문시 판매수 증가
            HashMap<String, Object> salesVolumeMap = new HashMap<>();
            HashMap<String, Object> ProductSalesVolumeMap = (HashMap)shopService.getProductSalesVolume(resultMap);
            int salesVolume =  (int)ProductSalesVolumeMap.get("SALES_VOLUME");
            salesVolume= salesVolume+Integer.parseInt((String)resultMap.get("PRODUCT_COUNT"));
            salesVolumeMap.put("SALES_VOLUME", salesVolume);
            salesVolumeMap.put("PRODUCT_ID", resultMap.get("PRODUCT_ID"));
            shopService.updateProductSalesVolume(salesVolumeMap);

            hashMap = new HashMap<>();
            String orderId = commonUtils.makeUuid();
            hashMap.put("ORDER_ID",orderId);
            hashMap.put("DELIVERY_ID",delivery_id);
            hashMap.put("PRODUCT_ID",resultMap.get("PRODUCT_ID"));
            hashMap.put("UID",params.get("UID"));
            hashMap.put("ORDER_METHOD",params.get("ORDER_METHOD"));
            hashMap.put("FINAL_PRICE",params.get("FINAL_PRICE"));
            hashMap.put("ADDITIONAL_DISCOUNT",params.get("ADDITIONAL_DISCOUNT"));
            hashMap.put("PRODUCT_COUNT",resultMap.get("PRODUCT_COUNT"));

            resultList.add(hashMap);
        }
        params.put("resultList", resultList);
        orderListService.insertOrderList(params);
        modelAndView.setViewName("/index");
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
