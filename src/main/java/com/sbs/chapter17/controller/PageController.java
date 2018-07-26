package com.sbs.chapter17.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created with IntelliJ IDEA.
 * Description:
 *
 * @Author: yangzhicheng
 * @Date: 2018/7/20 23:56
 */
@Controller
public class PageController {

    @RequestMapping("/bb")
    public String bb(){
        return "doc/bb";
    }

    @RequestMapping("/index")
    public String aa(){
        return "index";
    }

    @RequestMapping("/design-pattern")
    @ResponseBody
    public String toDesignPattern(String pageName){
        System.out.println(pageName);
        return "aa";
    }

    @RequestMapping("/dd")
    public String dd(){
        return "dd";
    }

    @RequestMapping("/ee")
    public String ee(){
        return "ee";
    }

    @RequestMapping("/video")
    public String video(){
        return "video";
    }




}
