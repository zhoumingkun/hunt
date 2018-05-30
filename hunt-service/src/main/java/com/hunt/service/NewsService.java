package com.hunt.service;

import java.util.List;

import com.hunt.model.entity.News;


public interface NewsService {
	// 新增
	public void save(News news);

	// 删除
	public void delete(int id);

	// 更新
	public void update(News news);

	// 查询全部
	public List<News> findAll();
}
