package com.hunt.service;

import java.util.List;

import com.hunt.model.entity.Enterprise;

public interface EnterpriseService {
	// 新增
	public void save(Enterprise enterprise);

	// 删除
	public void delete(int id);

	// 更新
	public void update(Enterprise enterprise);

	// 查询全部
	public List<Enterprise> findAll();
}
