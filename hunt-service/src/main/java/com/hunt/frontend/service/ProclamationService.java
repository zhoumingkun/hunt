package com.hunt.frontend.service;

import java.util.List;

import com.hunt.model.dto.PageInfo;
import com.hunt.model.entity.Proclamation;


/**
 * 公告Service层接口
 * @author YAO
 *
 */
public interface ProclamationService {
	// 新增
	public void save(Proclamation proclamation);

	// 删除
	public void delete(int id);

	// 更新
	public void update(Proclamation proclamation);

	// 查询全部
	public List<Proclamation> findAll();

	//分页查询 -前台
	public PageInfo findPage(int page, int state);

	//根据ID查询
	public Proclamation findById(int id);


}
