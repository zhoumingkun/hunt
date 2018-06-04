package com.hunt.frontend.service.impl;

import java.util.List;
/**
 * 
 *Activity实现类
 * @Author: zmk
 * @Date : 2018/5/30
 */
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.hunt.frontend.dao.ActivityMapper;
import com.hunt.frontend.service.ActivityService;
import com.hunt.model.dto.PageInfo;
import com.hunt.model.entity.Activity;
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

	@Override
	public PageInfo findPage(int page, int state) {
		 int count = activityMapper.findCount(state);
		 PageHelper.startPage(page, 10);
		 List<Activity> list = activityMapper.findAllByState(state);
		return new PageInfo(count, list);
	}

}
