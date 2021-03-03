package com.whpu.service.impl;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.whpu.dao.ProductDao;
import com.whpu.pojo.Product;
import com.whpu.service.ProductSerivce;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductServiceImpl implements ProductSerivce {
    @Autowired
    private ProductDao productDao;


    //    根据id查询商品详情

    public Product findById(int id) {
        return productDao.findById(id);
    }


    public List<Product> findByCateId(int cateid) {
        //System.out.println(productDao.findByCateId(cateid));
        return productDao.findByCateId(cateid);
    }


    public PageInfo<Product> findPage(int cateid, int currentPage, int pageSize) {
        PageHelper.startPage(currentPage, pageSize);
        List<Product> productList = productDao.findByPage(cateid);
        PageInfo<Product> productPageInfo = new PageInfo<Product>(productList);

        return productPageInfo;
    }

    public List<Product> findByName(String name){
        return productDao.findByName(name);
    }


}
