package com.iworkcloud.serviceImp;

import com.iworkcloud.mapper.AttendanceMapper;
import com.iworkcloud.mapper.StaffMapper;
import com.iworkcloud.pojo.Attendance;
import com.iworkcloud.pojo.Staff;
import com.iworkcloud.service.IAttendanceService;
import org.springframework.beans.factory.annotation.Autowired;

import java.sql.Date;
import java.util.List;

public class AttendanceService implements IAttendanceService {


    private AttendanceMapper attendanceMapper;

    public void setAttendanceMapper(AttendanceMapper attendanceMapper) {
        this.attendanceMapper = attendanceMapper;
    }

    @Override
    public boolean addAttendance(Attendance attendance) {
        return 1==attendanceMapper.insertAttendance(attendance)?true:false;
    }

    @Override
    public int getAbsenceByDay() {
        return 0;
    }



    @Override
    public List<Attendance> getAttendanceByStaff(String staffId) {
        return attendanceMapper.getAttendanceMonth(staffId);
    }

    @Override
    public List<Attendance> getAttendanceToday() {
        return attendanceMapper.queryAllAttendanceToday();
    }

    @Override
    public int getAttendanceNum() {
        return attendanceMapper.getLatedStaffNum();
    }

}
