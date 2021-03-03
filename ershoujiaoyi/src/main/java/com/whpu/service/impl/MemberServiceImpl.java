package com.whpu.service.impl;

import com.whpu.dao.MemberDao;
import com.whpu.pojo.Member;
import com.whpu.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService {

    @Autowired
    MemberDao memberDao ;  //创建数据库访问的对象


//  判断用户输入的电话和密码是否正确（即登录账号密码是否正确）
    public Member login(String mobile, String pwd) {

        Member member = memberDao.findByMobileAndPwd(mobile, pwd);
        return member;
    }


//    本方法为用户注册，输入账号和密码到member表
    public boolean regist(Member member) {
        //判断手机号是否存在（已存在则不可注册）
        Member mobile = memberDao.findByMobile(member.getMobile());
        if(mobile!=null){   //如果存在则返加null
            return false;
        }
        //如果不存在则完成添加的操作
        memberDao.add(member);
        return true;
    }
}
