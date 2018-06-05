package com.hunt.frontend.service;

import java.util.List;

import com.hunt.model.dto.PageInfo;
import com.hunt.model.entity.Policy;



/**
 * 招商Service层接口
 * @author YAO
 *
 */
public interface PolicyService {
	// 新增
	public void save(Policy policy);

	// 删除
	public void delete(int id);

	// 更新
	public void update(Policy policy);

	// 查询全部
	public List<Policy> findAll();

	//根据ID查询
	public Policy findById(int id);

	//分页查询
	public PageInfo findPage(int page,int state);
}
