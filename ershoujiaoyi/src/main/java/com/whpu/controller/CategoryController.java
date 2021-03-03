package com.whpu.controller;

import com.alibaba.fastjson.JSON;
import com.whpu.common.Result;
import com.whpu.pojo.Category;
import com.whpu.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import java.util.List;

@RestController
@RequestMapping("/category")
public class CategoryController {

    @Autowired
    private CategoryService categoryService;



    //导航栏分类
    @RequestMapping("/findAll")
    public Result findAll() {
        /**
         * 使用MySQL+radis
         */
        String allByRedis = categoryService.findAllById();
        List<Category> categories = JSON.parseArray(allByRedis, Category.class);
        Result result = new Result();
        result.setFlag(true);
        result.setData(categories);
        return result;
    }
}
