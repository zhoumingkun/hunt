package com.hunt.frontend.service;

import java.util.List;

import com.hunt.model.dto.PageInfo;
import com.hunt.model.entity.Travel;

/**
 * 
 *旅游接口
 * @Author: zmk
 * @Date : 2018/5/30
 */

public interface TravelService {
	    //增加
		public void save(Travel travel);
		
		//修改
		public void update(Travel travel);

	    //通过id进行查询
	    public Travel findById(int id);

	    //查询全部
	    public List<Travel> findAll();
	    
	    //删除
	    public void deleteById(int id);

	    //分页查询 -- 前台
		public PageInfo findPage(int page);

}
