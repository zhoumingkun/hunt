package com.hunt.frontend.service;

import java.util.List;

import com.hunt.model.dto.PageInfo;
import com.hunt.model.entity.News;


/**
 * 新闻Service层接口
 * @author YAO
 *
 */
public interface NewsService {
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
    // 分页查询
	PageInfo findPage(int page, int state,int state2);
}
