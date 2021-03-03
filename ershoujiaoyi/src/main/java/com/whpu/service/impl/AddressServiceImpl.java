package com.whpu.service.impl;

import com.whpu.dao.AddressDao;
import com.whpu.pojo.Address;
import com.whpu.service.AddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AddressServiceImpl implements AddressService {

    @Autowired
    private AddressDao addressDao;

//

    public List<Address> findByMemberId(int memberId) {
        return addressDao.findByMemberId(memberId);
    }

//    添加用户收货地址

    public void addAddress(Address address) {
        //应该对是否为默认地址添加判断，若不是默认地址需将该会员所对应的地址的default_value更新为0
        if(address.getDefault_value()==0){
            addressDao.addAddress(address);
        }else{
            addressDao.updataDefaultValue(address.getMbr_id());
            addressDao.addAddress(address);
        }
    }


    public Address findById(int id) {
        return addressDao.findById(id);
    }
}
