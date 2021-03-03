package com.whpu.dao;

import com.whpu.pojo.Address;
import org.apache.ibatis.annotations.Param;
import java.util.List;

public interface AddressDao {
     List<Address> findByMemberId(@Param("memberId") int memberId);
     Address findById(int memberId);
     void updataDefaultValue(int memberid);
     void addAddress(Address address);
}
