package com.hunt.service;

import java.util.List;

import com.hunt.model.entity.Specialty;



public interface SpecialtyService {
	// 新增
	public void save(Specialty specialty);

	// 删除
	public void delete(int id);

	// 更新
	public void update(Specialty culture);

	// 查询全部
	public List<Specialty> findAll();
}
