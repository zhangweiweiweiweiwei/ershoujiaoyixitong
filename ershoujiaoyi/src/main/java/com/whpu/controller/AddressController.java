package com.whpu.controller;

import com.whpu.common.Result;
import com.whpu.pojo.Address;
import com.whpu.pojo.Member;
import com.whpu.service.AddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import javax.servlet.http.HttpSession;
import java.util.List;


@RestController
@RequestMapping("/address")
public class AddressController {
    @Autowired
    private AddressService addressService;


    //根据memberId 获取当前用户的所有收货地址
    @RequestMapping("/findByMember")
    public Result findByMember(HttpSession session) {
        //获取前台传过来的会员编号查找收货地址
        Member member = (Member) session.getAttribute("member");
        Integer memberId = member.getId();
        //调用业务层根据会员ID获取对应的address
        List<Address> addressList = addressService.findByMemberId(memberId);
        Result result = new Result(true, addressList, "查询成功");

        return result;
    }


    //添加地址，对应order_confirm.html页面
    @RequestMapping("/saveAddress")
    public Result saveAddress(Address address, HttpSession session) {

        //获取前台传过来的收货地址
        Member member = (Member) session.getAttribute("member");
        address.setMbr_id(member.getId());
        //调用业务层将address保存在数据库中
        addressService.addAddress(address);
        Result result = new Result(true, "", "添加成功");

        return result;
    }
}
