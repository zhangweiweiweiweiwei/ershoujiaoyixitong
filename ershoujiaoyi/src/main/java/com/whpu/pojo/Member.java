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
@Table(name = "member")
public class Member {

    @Id
    @KeySql(useGeneratedKeys = true) //id 主键自增
    private Integer id;
    @Column(name = "mobile")
    private String mobile;
    @Column(name = "pwd")
    private String pwd;
    @Column(name = "nick_name")
    private String nick_name;
    @Column(name = "real_name")
    private String real_name;
    @Column(name = "email")
    private String email;
    @Column(name = "gender")
    private int gender;
    @Column(name = "register_time")
    private Date register_time;


}
