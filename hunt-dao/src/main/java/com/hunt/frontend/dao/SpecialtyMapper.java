package com.hunt.frontend.dao;

import java.util.List;

import com.hunt.model.entity.Specialty;


/**
 * 特产Dao层Mapper
 * @author YAO
 *
 */
public interface SpecialtyMapper {
	// 新增
	public void save(Specialty specialty);

	// 删除
	public void delete(int id);

	// 更新
	public void update(Specialty specialty);

	// 查询全部
	public List<Specialty> findAll();

	//查询总数
	public int findCount();

	//根据ID查询
	public Specialty findById(int id);
}
