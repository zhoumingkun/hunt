package com.hunt.frontend.service;

import java.util.List;

import com.hunt.model.dto.PageInfo;
import com.hunt.model.entity.Specialty;



/**
 * 特产Service层接口
 * @author YAO
 *
 */
public interface SpecialtyService {
	// 新增
	public void save(Specialty specialty);

	// 删除
	public void delete(int id);

	// 更新
	public void update(Specialty culture);

	// 查询全部
	public List<Specialty> findAll();

	//分页查询 -- 前台
	public PageInfo findPage(int page);

	//根据ID查询
	public Specialty findById(int id);
}
