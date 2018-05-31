package com.hunt.frontend.service;

import java.util.List;

import com.hunt.model.entity.Summarize;


/**
 * 
 *概况接口
 * @Author: zmk
 * @Date : 2018/5/30
 */

public interface SummarizeService {
	    //增加
		public void save(Summarize summarize);
		
		//修改
		public void update(Summarize summarize);

	    //通过id进行查询
	    public Summarize findById(int id);

	    //查询全部
	    public List<Summarize> findAll();
	    
	    //删除
	    public void deleteById(int id);

}
