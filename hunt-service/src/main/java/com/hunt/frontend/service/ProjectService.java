package com.hunt.frontend.service;

import java.util.List;

import com.hunt.model.dto.PageInfo;
import com.hunt.model.entity.Project;


/**
 * 
 *招商项目接口
 * @Author: zmk
 * @Date : 2018/5/30
 */


public interface ProjectService {
	    //增加
		public void save(Project project);
		
		//修改
		public void update(Project project);

	    //通过id进行查询
	    public Project findById(int id);

	    //查询全部
	    public List<Project> findAll();
	    
	    //删除
	    public void deleteById(int id);

	    //前台分页查询
		public PageInfo findPage(int page, int state,int state2,int state3, int type);
		
		
		//通过项目名称进行查询（搜索）
	    public PageInfo findByName(int page, int state,int state2,int state3, String name);

	    //微信端-查询全部推广项目 根 时间排序
		public List<Project> WX_findAll();

}
