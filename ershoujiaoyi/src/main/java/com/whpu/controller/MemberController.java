package com.whpu.controller;

import com.whpu.common.Result;
import com.whpu.pojo.Member;
import com.whpu.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import javax.servlet.http.HttpSession;
import java.util.Date;

@RestController
@RequestMapping("/member")
public class MemberController {
    @Autowired
    MemberService memberService;  //调用业务层的方法


    //本方法为用户登录（路径为member_login.html）
    //1、接收用户传过来的手机号和密码
    @RequestMapping("/login")
    public Result login(String mobile,String pwd,HttpSession session ){



        //2、调用业务层判断手机号和密码是否正确
        Member member = memberService.login(mobile, pwd);
        //对member对象进行判断，如果为null则表示登陆失败，如果不null则表示登陆成功

        //创建一个结果对象
        Result result = new Result();
        if(member==null){

            result.setFlag(false);
            result.setMsg("登录失败");
        }else{

            //登陆成功之后需要将用户的信息保存到session中。
            session.setAttribute("member",member);

            result.setFlag(true);
            result.setMsg("登录成功");
        }
        return result;
    }


    //本方法为top.html查询登录后左上角用户昵称    并在view_cart.html页面判断用户是否已登录
    @RequestMapping("/findNickName")
    public Result findNickName(HttpSession session){
        Member member = (Member)session.getAttribute("member");   //如果已经登陆过member对象不为null,否则为null

        //返回的结果对象
        Result result = new Result();
        result.setFlag(true);
        result.setMsg("");
        result.setData(member);
        return result;
    }

    //退出登录，返回主页面
    @RequestMapping("/logout")
    public Result logout(HttpSession session){
        //销毁session

        session.invalidate();

        Result result = new Result();
        result.setFlag(true);

        return result;
    }

    //本方法为用户注册（路径为member_register.html）
    @RequestMapping("/register")
    public Result register(Member member){
        //设置用户的注册时间
        member.setRegister_time(new Date());


        //调用业务层完成添加的任务
        boolean result1 = memberService.regist(member);

        //返回的结果对象
        Result result = new Result();
        result.setFlag(true);
        result.setMsg("");
        result.setData(member);

        return result;
    }


}
