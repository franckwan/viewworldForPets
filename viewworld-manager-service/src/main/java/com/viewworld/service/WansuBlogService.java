package com.viewworld.service;

import java.util.List;
import java.util.Map;

/**
 * Created by franck on 17/2/12.
 */
public interface WansuBlogService {
    void addMessage(Map<String, Object> paraMap);

    void modfiyMessage(Map<String, String> paraMap);

    void deleteMessage(Map<String, String> paraMap);

    List<Map<String,String>> getEssayList();

    void submitBlog(Map<String, Object> paraMap);
}
