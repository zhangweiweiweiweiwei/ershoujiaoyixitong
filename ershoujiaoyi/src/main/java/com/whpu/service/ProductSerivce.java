package com.whpu.service;

import com.github.pagehelper.PageInfo;
import com.whpu.pojo.Product;

import java.util.List;

public interface ProductSerivce {


    //根据id查询Product 进行商品详情展示
    public Product findById(int id);


    //根据商品分类进行查询
    public List<Product> findByCateId(int cateid);
    //根据商品分类进行分页查询
    public PageInfo<Product> findPage(int cateid, int currentPage, int pageSize);
    //根据商品名称进行商品查找
    public List<Product> findByName(String name);


}
