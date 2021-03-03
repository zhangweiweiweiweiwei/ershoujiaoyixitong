package com.whpu.dao;

import com.whpu.pojo.Product;
import org.apache.ibatis.annotations.Param;
import java.util.List;

public interface ProductDao {

    //1、获得当前商品详情
    Product findById(@Param("id")int id);

    //获得当前分类商品信息集合
     List<Product> findByCateId(int cateid);
    //查询当前分类商品的总记录数
     long findTotalCount(int cateid);
    //查询当前的集合信息
     List<Product> findByPage(@Param("cateid") int cateid);

    //添加商品
     void add(Product product);

     List<Product> findByName(String name);
}
