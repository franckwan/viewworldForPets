package com.viewworld.controller;

import com.viewworld.mapper.WansuBlogMapper;
import com.viewworld.service.WansuBlogService;
import com.viewworld.utils.Utils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by franck on 17/2/11.
 */
@Controller
@RequestMapping(value = "/wansuBlog")
public class wansuBLogController {
    @Autowired
    private WansuBlogService wansuBlogService;

    @Autowired
    private WansuBlogMapper wansuBlogMapper;


    @RequestMapping(value = "/messageSubmit")
    @ResponseBody
    public   Object  messageSubmit(@RequestParam Map<String, Object> map){
        Map<String,Object> paraMap = new HashMap<>();
        paraMap.put("id",1);
        paraMap.put("name",map.get("messageName"));
        paraMap.put("e_mail",map.get("messageEMail"));
        paraMap.put("subject",map.get("messageSubject"));
        paraMap.put("message",map.get("messageMessage"));
        paraMap.put("create_time",new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()).toString());

        wansuBlogService.addMessage(paraMap);
        Map<String,String> resultMap= new HashMap<String,String>();
        resultMap.put("success","success");
        return resultMap;
    }

    @RequestMapping(value = "/getEssayList")
    @ResponseBody
    public Object getEssayList(){

        return wansuBlogService.getEssayList();
    }

    @RequestMapping(value = "/submitBlog")
    @ResponseBody
    public Object submitBlog(@RequestParam Map<String, Object> map){
        Map<String,Object> paraMap = new HashMap<>();
        paraMap.put("essay",map.get("blog"));
        paraMap.put("title",map.get("title"));
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
        paraMap.put("updatetime",df.format(new Date()));
        paraMap.put("subject","skill");
        wansuBlogService.submitBlog(paraMap);
        return Utils.getSuccessMap();
    }

    @RequestMapping(value = "/getEssayWhole")
    @ResponseBody
    public Object getEssayWhole(@RequestParam Map<String, Object> map){
        Map<String,String> paraMap = new HashMap<>();
        paraMap.put("title",map.get("title").toString());

        return wansuBlogMapper.getEssayWhole(paraMap);
    }


}
