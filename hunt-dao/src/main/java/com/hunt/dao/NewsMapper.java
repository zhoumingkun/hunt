package com.hunt.dao;

import java.util.List;

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
}
