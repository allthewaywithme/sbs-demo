package com.sbs.chapter17.controller;

import com.sbs.chapter17.entity.JsonResult;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.UUID;

/**
 * Created with IntelliJ IDEA.
 * Description:
 *
 * @Author: yangzhicheng
 * @Date: 2018/7/23 14:48
 */
@Controller
@RequestMapping("/up")
public class UploadController {

    @RequestMapping(value="/upload",method=RequestMethod.POST)
    @ResponseBody
    private JsonResult fildUpload(@RequestParam(value="kv-explorer",required=false) MultipartFile file,
                                  HttpServletRequest request, Model model)throws Exception{
        //基本表单

        //获得物理路径webapp所在路径
        String pathRoot = request.getSession().getServletContext().getRealPath("/WEB-INF/jsp/");
        String path="";
        if(!file.isEmpty()){
            //生成uuid作为文件名称
            String uuid = UUID.randomUUID().toString().replaceAll("-","");
            //获得文件类型（可以判断如果不是图片，禁止上传）
            String contentType=file.getContentType();
            //获得文件后缀名称
            String imageName=contentType.substring(contentType.indexOf("/")+1);
            //地址
            path="/images/"+uuid+"."+imageName;
            file.transferTo(new File(pathRoot+path));
        }else {
            //可以使用以下包装类。响应结果，请看附件
            //ResponseResult.build(400,"上传图片失败");
        }
        System.out.println(path);
        request.setAttribute("imagesPath", path);
        model.addAttribute("imgPath",path);
        return new JsonResult(1,path);
    }
}
