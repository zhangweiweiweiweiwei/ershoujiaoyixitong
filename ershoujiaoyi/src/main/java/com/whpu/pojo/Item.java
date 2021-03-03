package com.whpu.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import tk.mybatis.mapper.annotation.KeySql;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Table;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "item")
public class Item {

    @Id
    @KeySql(useGeneratedKeys = true) //id 主键自增
    private Integer id;
    @Column(name = "order_id")
    private Integer order_id;
    @Column(name = "product_id")
    private Integer product_id;
    @Column(name = "amount")
    private Integer amount;
    @Column(name = "total_price")
    private Double total_price;
    @Column(name = "payment_price")
    private Double payment_price;


}
