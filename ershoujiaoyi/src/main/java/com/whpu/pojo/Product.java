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
@Table(name = "product")
public class Product {
    @Id
    @KeySql(useGeneratedKeys = true) //id 主键自增
    private Integer id;
    @Column(name = "name")
    private String name;
    @Column(name = "cate_id")
    private Integer cate_id;
    @Column(name = "thumbnail")
    private String thumbnail;
    @Column(name = "inventory")
    private Integer inventory;
    @Column(name = "sales_volume")
    private Integer sales_volume;
    @Column(name = "price")
    private double price;
    @Column(name = "sale_price")
    private double sale_price;
    @Column(name = "detail_description")
    private String detail_description;
    @Column(name = "selling_description")
    private String selling_description;
    @Column(name = "create_time")
    private Date create_time;
    @Column(name = "sale_time")
    private Date sale_time;




    @Override
    public String toString() {
        return "Product{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", cate_id=" + cate_id +
                ", thumbnail='" + thumbnail + '\'' +
                ", inventory=" + inventory +
                ", sales_volume=" + sales_volume +
                ", price=" + price +
                ", sale_price=" + sale_price +
                ", detail_description='" + detail_description + '\'' +
                ", selling_description='" + selling_description + '\'' +
                ", create_time=" + create_time +
                ", sale_time=" + sale_time +
                '}';
    }
}
