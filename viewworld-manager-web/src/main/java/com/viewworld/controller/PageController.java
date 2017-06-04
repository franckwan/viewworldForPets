package com.viewworld.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by franck on 17/1/8.
 */
@Controller
public class PageController {
    /**
     * 返回首页
     */
    @RequestMapping("/")
    public String showIndex(){
        return "index";
    }

    @RequestMapping("/blog")
    public String showBlog(){
        return "wansu_blog";
    }

    @RequestMapping("/recording")
    public String showRecording(){
        return "Recording";
    }

    @RequestMapping("/recordingAdd")
    public String showRecordingAdd(){
        return "RecordingAdd";
    }

    @RequestMapping("/recordingVue")
    public String showRecordingVue(){
        return "RecordingVue";
    }

}
