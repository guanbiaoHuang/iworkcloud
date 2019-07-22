package com.iworkcloud.serviceImp;

import com.iworkcloud.mapper.ScheduleMapper;
import com.iworkcloud.pojo.Schedule;
import com.iworkcloud.service.IScheduleService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class ScheduleService implements IScheduleService {

    private ScheduleMapper scheduleMapper;

    public void setScheduleMapper(ScheduleMapper scheduleMapper) {
        this.scheduleMapper = scheduleMapper;
    }

    @Override
    public boolean addSchedule(Schedule schedule) {
        return 1==scheduleMapper.insertSchedule(schedule)?true:false;
    }

    @Override
    public boolean emptyPastSchedule(String staffId) {
        return false;
    }

    @Override
    public boolean modifySchedule(Schedule schedule) {
        return false;
    }

    @Override
    public List<Schedule> getRecentSchedule(int recentDays, String staffId) {
        return null;
    }
}