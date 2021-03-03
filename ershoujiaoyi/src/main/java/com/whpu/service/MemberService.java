package com.whpu.service;

import com.whpu.pojo.Member;

public interface MemberService {

     Member login(String mobile, String pwd);


     boolean regist(Member member);
}
