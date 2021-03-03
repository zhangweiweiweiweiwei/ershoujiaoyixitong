package com.whpu.dao;

import com.whpu.pojo.Orders;

public interface OrderDao {
     int add(Orders orders);
     void update(int status, String orderNumber);
}
