package com.viewworld.utils;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by franck on 17/2/19.
 */
public class Utils {
    public static Map<String,String> getSuccessMap(){
        Map<String,String> resultMap= new HashMap<String,String>();
        resultMap.put("success","success");
        return resultMap;
    }
}
