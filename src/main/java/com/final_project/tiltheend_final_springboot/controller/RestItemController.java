package com.final_project.tiltheend_final_springboot.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.final_project.tiltheend_final_springboot.service.FilesService;
import com.final_project.tiltheend_final_springboot.service.ItemService;
import com.final_project.tiltheend_final_springboot.service.ShoppingCartService;
import com.final_project.tiltheend_final_springboot.utils.CommonUtils;

@RestController
@CrossOrigin // 다른기종 연결?
@RequestMapping(value = "/shop")
public class RestItemController {
    @Autowired
    ItemService itemService;

    @Autowired
    ShoppingCartService shoppingCartService;

    @Autowired
    FilesService filesService;

    CommonUtils commonUtils = new CommonUtils();

        @RequestMapping(value = "/calcPrice", method = RequestMethod.POST)
    public Map calcPrice(@RequestParam Map<String, Object> params,
            ModelAndView modelAndView) {
                // params.put("PRODUCT_ID", UID);
                ArrayList resultMap_item = (ArrayList) itemService.selectItemWithUID(params);
                HashMap<String, Object> resultMap;
                resultMap = (HashMap)resultMap_item.get(0);
                int calcPrice = (int)resultMap.get("PRICE")*Integer.parseInt((String) params.get("tempProductCount"));
                int i= 1;
                resultMap.put("PRICE", calcPrice);
                return resultMap;
                // modelAndView.addObject("resultMap", resultMap_item);
                // return resultMap_item;
    }
}
