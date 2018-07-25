package com.sbs.chapter17.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/**
 * Created with IntelliJ IDEA.
 * Description:
 *
 * @Author: yangzhicheng
 * @Date: 2018/7/22 14:45
 */
@Controller
@RequestMapping("/goto")
public class GotoController {

    @RequestMapping("/toUser")
    public String toUser(){
        return "doc/design-pattern";
    }

    @RequestMapping("/toPage")
    @ResponseBody
    public Map<String,Object> returnPage(HttpServletRequest request){

        Map<String,Object> map=new HashMap<String,Object>();
        map.put("code",1);
        return map;

    }
}
