package com.hunt.frontend.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.hunt.model.entity.News;
import com.hunt.model.entity.Policy;

/**
 * 招商Dao层Mapper
 * @author YAO
 *
 */
public interface PolicyMapper {
	// 新增
	public void save(Policy policy);

	// 删除
	public void delete(int id);

	// 更新
	public void update(Policy policy);

	// 查询全部
	public List<Policy> findAll();

	//根据条件查询
	public Policy findById(int id);

	//根据状态查询数量
	public int findCount(@Param("state") int state);
	
	//查询全部 根据状态查询
	public List<Policy> findAllByState(@Param("state") int state);
}
