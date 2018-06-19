package com.hunt.frontend.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.hunt.model.entity.Proclamation;


/**
 * 公告Dao层Mapper
 * @author YAO
 *
 */
public interface ProclamationMapper {
	// 新增
	public void save(Proclamation proclamation);

	// 删除
	public void delete(int id);

	// 更新
	public void update(Proclamation proclamation);

	// 查询全部
	public List<Proclamation> findAll();

	//根据状态查询数量
	public int findCount(@Param("state") int state,@Param("state2") int state2);

	//根据状态查询分页数据
	public List<Proclamation> findAllByState(@Param("state") int state,@Param("state2") int state2);

	//根据ID查询
	public Proclamation findById(int id);
}
