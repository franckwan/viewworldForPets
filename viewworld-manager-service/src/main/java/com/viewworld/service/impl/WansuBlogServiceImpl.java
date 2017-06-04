package com.viewworld.service.impl;

import com.viewworld.mapper.WansuBlogMapper;
import com.viewworld.service.WansuBlogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * Created by franck on 17/2/12.
 */
@Service
public class WansuBlogServiceImpl implements WansuBlogService {
    @Autowired
    private WansuBlogMapper wansuBlogMapper;

    @Override
    public void addMessage(Map<String, Object> paraMap) {
        wansuBlogMapper.addMessage(paraMap);
    }

    @Override
    public void modfiyMessage(Map<String, String> paraMap) {
        wansuBlogMapper.modfiyMessage(paraMap);
    }

    @Override
    public void deleteMessage(Map<String, String> paraMap) {
        wansuBlogMapper.deleteMessage(paraMap);
    }

    @Override
    public List<Map<String, String>> getEssayList() {
        return wansuBlogMapper.getEssayList();
    }

    @Override
    public void submitBlog(Map<String, Object> paraMap) {
        wansuBlogMapper.submitBlog(paraMap);
    }
}
