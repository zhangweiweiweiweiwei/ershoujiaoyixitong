package com.whpu.service.impl;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.whpu.dao.CategoryDao;
import com.whpu.pojo.Category;
import com.whpu.service.CategoryService;
import com.whpu.utils.JedisUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import redis.clients.jedis.Jedis;

import java.util.List;
@Service
public class CategoryServiceImpl implements CategoryService {

    @Autowired
    CategoryDao categoryDao ;


    /*
    定义导航栏mysql查询Category所有分类
     */
    public List<Category> findAll() {
        return categoryDao.findAll();
    }


    /*
    定义导航栏mysql查询Category所有分类
     */
    public String findAllById() {

        Jedis jedis = JedisUtil.getJedis();
        //1.判断Redis中是否有category信息
        String categoryJSON = jedis.get("CATEGORY");
        if(categoryJSON == null || categoryJSON.length() <= 0){
            //若不存在，在数据库中查询并返回
            List<Category> all = categoryDao.findAll();
            ObjectMapper objectMapper = new ObjectMapper();
            try{
                categoryJSON = objectMapper.writeValueAsString(all);
            } catch (JsonProcessingException e){
                e.printStackTrace();
            }
            jedis.set("CATEGORY",categoryJSON);
            //System.out.println("访问了MySQL数据库");
        }else{
            //System.out.println("访问了Redis数据库");
        }
        //若存在直接返回
        return categoryJSON;
    }

}
