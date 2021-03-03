package com.whpu.controller;

import com.whpu.common.Result;
import com.whpu.pojo.*;
import com.whpu.service.AddressService;
import com.whpu.service.OrderService;
import com.whpu.service.ProductSerivce;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@RestController
@RequestMapping("/order")
public class OrderController {

    @Autowired
    ProductSerivce productService ;
    @Autowired
    AddressService addressService;
    @Autowired
    OrderService orderService ;

//根据id获取到购物车的商品信息
//获取前台传过来的商品编号和数量
    @RequestMapping("/confirmOrder")
    public Result confirmOrder(String ids,String amounts){


        String[] idss = ids.split(",");
        String[] amountss = amounts.split(",");

        //构造一个集合，将订单项的信息显示到前台
        List<CartItem> orderList = new ArrayList<CartItem>();

        for(int i=0; i<idss.length; i++){
            String id = idss[i]; //商品编号
            String amount = amountss[i];//获取数量
            Product product = productService.findById(Integer.parseInt(id));
            CartItem cartItem = new CartItem(product,Integer.parseInt(amount));
            orderList.add(cartItem);
        }

        Result result = new Result(true,orderList,"查询成功");

       return result;
    }


//    提交订单
    @RequestMapping("/submitOrder")
    public Result submitOrder(String address_id,String[] ids,String[] amounts,String remark ,HttpSession session){
        //获取前台传过来的地址编号
        //获取商品的编号和数量
        //获取买家的留言

        //创建一个订单对象
        Orders orders = new Orders();
        orders.setStatus(0);        //0：表示未付款，1：表示已付款  2：表示未发货
        //产生订单号
        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssSSS");
        String orderNumber = sdf.format(new Date());
        orders.setNumber(orderNumber);

        //获取订单地址信息
        Address address = addressService.findById(Integer.parseInt(address_id));
        orders.setContact(address.getContact());
        orders.setZipcode(address.getZipcode());
        orders.setStreet(address.getStreet());
        orders.setMobile(address.getMobile());
        //设置买的编号

        Member member = (Member) session.getAttribute("member");
        orders.setBuyer_id(member.getId());
        //设置备注
        orders.setRemark(remark);
        //设置订单生效日期
        orders.setCreate_time(new Date());

        int totalAmout=0;   //总数量
        double totalPrice=0;  //总价格
        double totalPayPrice=0; //实际支付的总价格
        //获取商品信息
        for(int i=0; i<ids.length; i++){
            Product product = productService.findById(Integer.parseInt(ids[i]));
            int amount = Integer.parseInt(amounts[i]);
            totalAmout+=amount;
            totalPrice+=product.getPrice()*amount;
            totalPayPrice+=product.getSale_price()*amount;
        }
        orders.setPayment_price(totalPayPrice);
        orders.setTotal_price(totalPrice);
        orders.setTotal_amount(totalAmout);

        //添加订单
        orderService.add(orders,ids,amounts);
        Result result = new Result(true,orders,"订单生成成功");

        return result;
    }
}
