package com.whpu.service.impl;

import com.whpu.dao.OrderDao;
import com.whpu.dao.OrderItemDao;
import com.whpu.dao.ProductDao;
import com.whpu.pojo.Item;
import com.whpu.pojo.Orders;
import com.whpu.pojo.Product;
import com.whpu.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OrderServiceImpl implements OrderService {

    @Autowired
    OrderDao orderDao ;
    @Autowired
    ProductDao productDao;
    @Autowired
    OrderItemDao orderItemDao ;


//    添加订单功能
    public void add(Orders orders, String[] ids, String[] amounts) {
        //添加订单，同时将订单的id返回
        int orderId = orderDao.add(orders);
        //添加订单项到订单中
        for(int i=0;i<ids.length;i++){
            //创建订单项对象
            Item item = new Item();
            item.setOrder_id(orderId);
            item.setProduct_id(Integer.parseInt(ids[i]));
            item.setAmount(Integer.parseInt(amounts[i]));

            Product product = productDao.findById(Integer.parseInt(ids[i]));
            item.setTotal_price(product.getPrice()*Integer.parseInt(amounts[i]));
            item.setPayment_price(product.getSale_price()*Integer.parseInt(amounts[i]));
            orderItemDao.add(item);
        }

    }

    public void update(int status, String orderNumber) {
        orderDao.update(status,orderNumber);
    }
}
