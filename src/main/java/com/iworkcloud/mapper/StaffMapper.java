package com.iworkcloud.mapper;


import com.iworkcloud.pojo.Staff;

import java.util.HashMap;


public interface StaffMapper {
    void insertStaff(Staff staff);
    Staff queryStaffByPhone(String phone);
    int updatePhoneById(HashMap<String,Object> map);
    void deleteStaffById(int id);
}