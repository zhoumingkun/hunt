package com.hunt.service;

import java.util.List;

import com.hunt.model.entity.Activity;
/**
 * 
 *Activity接口
 * @Author: zmk
 * @Date : 2018/5/30
 */


public interface ActivityService {
	    //增加
		public void save(Activity activity);
		
		//修改
		public void update(Activity activity);

	    //通过id进行查询
	    public Activity findById(int id);

	    //查询全部
	    public List<Activity> findAll();
	    
	    //删除
	    public void deleteById(int id);

}
