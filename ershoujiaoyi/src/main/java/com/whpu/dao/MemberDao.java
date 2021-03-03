package com.whpu.dao;

import com.whpu.pojo.Member;
import org.apache.ibatis.annotations.Param;
public interface MemberDao {

     Member findByMobileAndPwd(@Param("mobile") String mobile,@Param("pwd") String pwd);

     Member findByMobile(@Param("mobile") String mobile);

     void add(Member member);
}
