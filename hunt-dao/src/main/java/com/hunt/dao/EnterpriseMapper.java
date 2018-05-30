package com.hunt.dao;

import java.util.List;

import com.hunt.model.entity.Enterprise;


/**企业Dao层Mapper
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
}
