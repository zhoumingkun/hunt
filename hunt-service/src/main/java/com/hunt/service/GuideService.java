package com.hunt.service;

import java.util.List;

import com.hunt.model.entity.Guide;


/**
 * 
 *Guide接口
 * @Author: zmk
 * @Date : 2018/5/30
 */


public interface GuideService {
	    //增加
		public void save(Guide guide);
		
		//修改
		public void update(Guide guide);

	    //通过id进行查询
	    public Guide findById(int id);

	    //查询全部
	    public List<Guide> findAll();
	    
	    //删除
	    public void deleteById(int id);

}
