package com.hunt.frontend.dao;

import java.util.List;

import com.hunt.model.entity.Project;

/**
 * 
 *招商项目接口
 * @Author: zmk
 * @Date : 2018/5/30
 */



public interface ProjectMapper {
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
}
