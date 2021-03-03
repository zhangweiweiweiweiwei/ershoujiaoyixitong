package com.whpu.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import tk.mybatis.mapper.annotation.KeySql;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;
@Data
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "orders")
public class Orders {
    @Id
    @KeySql(useGeneratedKeys = true) //id 主键自增
    private Integer id;
    @Column(name = "number")
    private String number;
    @Column(name = "buyer_id")
    private Integer buyer_id;
    @Column(name = "total_amount")
    private Integer total_amount;
    @Column(name = "total_price")
    private Double total_price;
    @Column(name = "payment_price")
    private Double payment_price;
    @Column(name = "remark")
    private String remark;
    @Column(name = "contact")
    private String contact;
    @Column(name = "mobile")
    private String mobile;
    @Column(name = "street")
    private String street;
    @Column(name = "zipcode")
    private String zipcode;
    @Column(name = "create_time")
    private Date create_time;
    @Column(name = "payment_time")
    private Date payment_time;
    @Column(name = "delivery_time")
    private Date delivery_time;
    @Column(name = "end_time")
    private Date end_time;
    @Column(name = "status")
    private Integer status;


}
