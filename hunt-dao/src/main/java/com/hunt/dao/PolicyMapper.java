package com.hunt.dao;

import java.util.List;

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
}
