package com.hunt.frontend.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

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

    //根据类型与状态查询总数
	public int findCount(@Param("state") int state,@Param("state2") int state2,@Param("state3") int state3,@Param("type") int type);

	//根据类型与状态查询
	public List<Project> findAllByState(@Param("state") int state,@Param("state2") int state2,@Param("state3") int state3,@Param("type") int type);
    
	//根据名称与状态查询总数
	public int findCountByName(@Param("state") int state,@Param("state2") int state2,@Param("state3") int state3,@Param("projectName") String projectName);
	
	//根据名称与状态查询（搜索）
	public List<Project> findByName(@Param("state") int state,@Param("state2") int state2,@Param("state3") int state3,@Param("projectName") String projectName);

	//微信端-查询全部推广项目 根 时间排序
	public List<Project> WX_findAll();
}