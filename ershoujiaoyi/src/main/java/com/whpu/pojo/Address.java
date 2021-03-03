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
@Table(name = "address")
public class Address {
    @Id
    @KeySql(useGeneratedKeys = true) //id 主键自增
    private Integer id;
    @Column(name = "contact")
    private String contact;
    @Column(name = "mobile")
    private String mobile;
    @Column(name = "street")
    private String street;
    @Column(name = "zipcode")
    private String zipcode;
    @Column(name = "mbr_id")
    private Integer mbr_id;
    @Column(name = "default_value")
    private int default_value;



    @Override
    public String toString() {
        return "Address{" +
                "id=" + id +
                ", contact='" + contact + '\'' +
                ", mobile='" + mobile + '\'' +
                ", street='" + street + '\'' +
                ", zipcode='" + zipcode + '\'' +
                ", mbr_id=" + mbr_id +
                ", default_value=" + default_value +
                '}';
    }
}
