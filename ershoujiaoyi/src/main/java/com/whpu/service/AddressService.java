package com.whpu.service;

import com.whpu.pojo.Address;

import java.util.List;

public interface AddressService {
     List<Address>findByMemberId(int memberId);
     void addAddress(Address address);
     Address findById(int id);
}
