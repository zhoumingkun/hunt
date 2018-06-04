package com.hunt.frontend.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.hunt.model.entity.News;


/**
 * 新闻Dao层Mapper
 * @author YAO
 *
 */
public interface NewsMapper {
	// 新增
	public void save(News news);

	// 删除
	public void delete(int id);

	// 更新
	public void update(News news);

	// 查询全部
	public List<News> findAll();

	//根据ID查询
	public News findById(int id);
	
	//根据状态查询数量
	public int findCount(@Param("state") int state);

	//查询全部 根据状态查询
	public List<News> findAllByState(@Param("state") int state);
}
