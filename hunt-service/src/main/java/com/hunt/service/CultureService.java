package com.hunt.service;

import java.util.List;

import com.hunt.model.entity.Culture;


/**文化Service层接口
 * @author YAO
 *
 */
public interface CultureService {
	// 新增
	public void save(Culture culture);

	// 删除
	public void delete(int id);

	// 更新
	public void update(Culture culture);

	// 查询全部
	public List<Culture> findAll();
}
