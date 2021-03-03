package com.whpu.controller;

import com.github.pagehelper.PageInfo;
import com.whpu.common.Result;
import com.whpu.pojo.Product;
import com.whpu.service.ProductSerivce;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import javax.servlet.http.HttpServletRequest;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.Date;
import java.util.List;


@RestController
@RequestMapping("/product")
public class ProductController {

    @Autowired
    private ProductSerivce productSerivce;


    //商品详情展示 对应product_detail.html页面
    @RequestMapping("/findById")
    public Result findById(HttpServletRequest request) {
        //获取前台传过来的商品编号
        String sid = request.getParameter("productId");
        int productid = 0;
        if (sid != null)
            productid = Integer.parseInt(sid);
        //调用业务层根据分类来进行商品的查询
        Product product = productSerivce.findById(productid);
        Result result = new Result(true, product, "登录成功");
        return result;
    }

    @RequestMapping("/findPage")
    public Result findPage(@RequestParam(defaultValue = "1") String categoryId,
                           @RequestParam(defaultValue = "1") String currentPage,
                           @RequestParam(defaultValue = "10") String pageSize) {

        PageInfo<Product> page = productSerivce.findPage(Integer.parseInt(categoryId), Integer.parseInt(currentPage), Integer.parseInt(pageSize));

        Result result = new Result(true, page, "查询成功");
        return result;
    }

    @RequestMapping("/search")
    public Result findproduct(@RequestParam("keyword") String keyword) throws UnsupportedEncodingException {
        String keywords = "";
        keywords = URLDecoder.decode(keyword, "UTF-8");
        System.out.println(keywords);
        List<Product> list = productSerivce.findByName(keywords);
        System.out.println(list.toString());
        Result result = new Result(true, list, "查询成功");
        return result;
    }
    
}
