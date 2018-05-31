package com.hunt.service.impl;

import java.util.List;
/**
 * 
 *Activity实现类
 * @Author: zmk
 * @Date : 2018/5/30
 */
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hunt.dao.ActivityMapper;
import com.hunt.model.entity.Activity;
import com.hunt.service.ActivityService;
/**
 * 
 *招商活动实现类
 * @Author: zmk
 * @Date : 2018/5/30
 */
@Service
public class ActivityServiceImpl implements ActivityService{
	@Autowired
    private ActivityMapper activityMapper;

	@Override
	public void save(Activity activity) {
		// TODO Auto-generated method stub
		activityMapper.save(activity);
	}

	@Override
	public void update(Activity activity) {
		// TODO Auto-generated method stub
		activityMapper.update(activity);
	}

	@Override
	public Activity findById(int id) {
		// TODO Auto-generated method stub
		return activityMapper.findById(id);
	}

	@Override
	public List<Activity> findAll() {
		// TODO Auto-generated method stub
		return activityMapper.findAll();
	}

	@Override
	public void deleteById(int id) {
		// TODO Auto-generated method stub
		activityMapper.deleteById(id);
	}

	
	

	
	
}
