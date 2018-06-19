package com.hunt.frontend.service;

import java.util.List;

import com.hunt.model.dto.PageInfo;
import com.hunt.model.entity.Enterprise;

/**
 * 企业Service层接口
 * @author YAO
 *
 */
public interface EnterpriseService {
	// 新增
	public void save(Enterprise enterprise);

	// 删除
	public void delete(int id);

	// 更新
	public void update(Enterprise enterprise);

	// 查询全部
	public List<Enterprise> findAll();

	// 分页查询
	PageInfo findPage(int page, int state, String trade,int state2);

	//根据ID查询
	public Enterprise findById(int id);

	//微信端-查询全部发布企业 根 时间排序
	public List<Enterprise> WX_findAll();
}
