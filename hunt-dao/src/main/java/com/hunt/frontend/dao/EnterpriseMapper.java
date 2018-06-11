package com.hunt.frontend.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.hunt.model.entity.Enterprise;


/**
 * 企业Dao层Mapper
 * @author YAO
 *
 */
public interface EnterpriseMapper {
	// 新增
	public void save(Enterprise enterprise);

	// 删除
	public void delete(int id);

	// 更新
	public void update(Enterprise enterprise);

	// 查询全部
	public List<Enterprise> findAll();
	
	//根据状态查询数量
	public int findCount(@Param("state") int state,@Param("trade") String trade);

	//查询全部 根据状态查询
	public List<Enterprise> findAllByState(@Param("state") int state,@Param("trade") String trade);

	//根据ID查询
	public Enterprise findById(int id);

	//微信端-查询全部发布企业 根 时间排序
	public List<Enterprise> WX_findAll();
}
