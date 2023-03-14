package com.final_project.tiltheend_final_springboot.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.final_project.tiltheend_final_springboot.service.FilesService;
import com.final_project.tiltheend_final_springboot.service.ItemService;
import com.final_project.tiltheend_final_springboot.service.ShoppingCartService;
import com.final_project.tiltheend_final_springboot.utils.CommonUtils;

@Controller
@RequestMapping(value = "/shop")
public class ItemController {
    @Autowired
    ItemService itemService;

    @Autowired
    ShoppingCartService shoppingCartService;

    @Autowired
    FilesService filesService;

    CommonUtils commonUtils = new CommonUtils();

    @RequestMapping(value = "/{UID}", method = RequestMethod.GET)
    public ModelAndView showItem(@RequestParam Map<String, Object> params, @PathVariable String UID,
            ModelAndView modelAndView) {
        params.put("PRODUCT_ID", UID);
        Object resultMap_item = itemService.selectItemWithUID(params);
        Object resultMap_review = itemService.selectReviewWithUID(params);
        params.put("RATE", '5');
        Object review_5 = itemService.selectReviewWithRate(params);
        params.put("RATE", '4');
        Object review_4 = itemService.selectReviewWithRate(params);
        params.put("RATE", '3');
        Object review_3 = itemService.selectReviewWithRate(params);
        params.put("RATE", '2');
        Object review_2 = itemService.selectReviewWithRate(params);
        params.put("RATE", '1');
        Object review_1 = itemService.selectReviewWithRate(params);
        params.put("SOURCE_UNIQUE_SEQ", UID);
        params.put("CATEGORY", "shop");
        Object itemFiles_main = filesService.selectFilesWithCategory(params);
        params.put("CATEGORY", "common");
        Object itemFiles_info = filesService.selectFilesWithCategory(params);
        Object reviewFiles = itemService.selectReviewFile(params);
        modelAndView.addObject("resultMap", resultMap_item);
        modelAndView.addObject("resultMap_review", resultMap_review);
        modelAndView.addObject("review_5", review_5);
        modelAndView.addObject("review_4", review_4);
        modelAndView.addObject("review_3", review_3);
        modelAndView.addObject("review_2", review_2);
        modelAndView.addObject("review_1", review_1);
        modelAndView.addObject("file_main", itemFiles_main);
        modelAndView.addObject("file_info", itemFiles_info);
        modelAndView.addObject("reviewfile", reviewFiles);
        modelAndView.setViewName("shop/item_info");
        return modelAndView;
    }

    @RequestMapping(value = "/cart/{UID}", method = RequestMethod.POST)
    public ModelAndView toCart(@RequestParam Map<String, Object> params, @PathVariable String UID,
            ModelAndView modelAndView) {
        params.put("SHOPPINGCART_ID", commonUtils.makeUuid());
        Object resultMap = shoppingCartService.insertShoppingcart(params);
        resultMap = shoppingCartService.selectCartListAndFiles(params);
        modelAndView.addObject("resultMap", resultMap);
        modelAndView.setViewName("shoppingcart/shoppingcart");
        return modelAndView;
    }


    //     @RequestMapping(value = "/calcPrice", method = RequestMethod.POST)
    // public Map calcPrice(@RequestParam Map<String, Object> params,
    //         ModelAndView modelAndView) {
    //             // params.put("PRODUCT_ID", UID);
    //             ArrayList resultMap_item = (ArrayList) itemService.selectItemWithUID(params);
    //             HashMap<String, Object> resultMap;
    //             resultMap = (HashMap)resultMap_item.get(0);
    //             int calcPrice = (int)resultMap.get("PRICE")*Integer.parseInt((String) params.get("tempProductCount"));
    //             int i= 1;
    //             resultMap.put("PRICE", calcPrice);
    //             return resultMap;
    //             // modelAndView.addObject("resultMap", resultMap_item);
    //             // return resultMap_item;
    // }
}
