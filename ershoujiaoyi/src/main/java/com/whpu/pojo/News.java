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
@Table(name = "news")
public class News  {
    @Id
    @KeySql(useGeneratedKeys = true) //id 主键自增
    private Integer id;
    @Column(name = "title")
    private String title;
    @Column(name = "thumbnail")
    private String thumbnail;
    @Column(name = "content")
    private String content;
    @Column(name = "top")
    private Integer top;
    @Column(name = "hits")
    private Integer hits;
    @Column(name = "pub_time")
    private Date pub_time;


}
