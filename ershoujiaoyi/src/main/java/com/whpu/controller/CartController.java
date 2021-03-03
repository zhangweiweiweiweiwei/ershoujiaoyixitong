package com.whpu.controller;

import com.whpu.common.Result;
import com.whpu.pojo.CartItem;
import com.whpu.pojo.Product;
import com.whpu.service.ProductSerivce;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;


@RestController
@RequestMapping("/cart")
//购物车
public class CartController  {

    @Autowired
    private ProductSerivce productSerivce ;

    //获取前台传来的商品编号和数量  获取购物车,采用session而不是数据库来存储相关数据
    @RequestMapping("/addCart")
    public Result addCart(int productId,int number,HttpSession session) {


        //创建一个购物车项
        Product product = productSerivce.findById(productId);
        CartItem cartItem = new CartItem(product,number);

        //根据session获取到cart购物车
        List<CartItem> cart = (List<CartItem>) session.getAttribute("cart");
        if(cart==null){
            //如果购物车为空，则创建一个购物车，否则直接将商品添加到购物车
            cart = new ArrayList<CartItem>();//若是第一次购物测创建购物车
        }
        cart.add(cartItem);//将购物车项加入购物车
        session.setAttribute("cart",cart);

        Result result = new Result();
        result.setFlag(true);
        result.setMsg("添加成功");

        return result;
    }



    //请求购物者中的商品信息
    @RequestMapping("/viewCart")
    public Result viewCart(HttpSession session){

        //从session中取出购物车对象（list）
        List<CartItem> cart = (List<CartItem>)session.getAttribute("cart");
        Result result = new Result();
        if(cart == null){
            result.setFlag(false);
            result.setMsg("购物车为空");
        }else {
            result.setFlag(true);
            result.setMsg("查询成功");
            result.setData(cart);
        }
        return result;
    }
}
