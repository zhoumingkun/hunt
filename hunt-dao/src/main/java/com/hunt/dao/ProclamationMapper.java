package com.hunt.dao;

import java.util.List;

import com.hunt.model.entity.Proclamation;


public interface ProclamationMapper {
	// 新增
	public void save(Proclamation proclamation);

	// 删除
	public void delete(int id);

	// 更新
	public void update(Proclamation proclamation);

	// 查询全部
	public List<Proclamation> findAll();
}
