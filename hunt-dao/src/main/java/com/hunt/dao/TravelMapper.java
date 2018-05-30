package com.hunt.dao;

import java.util.List;

import com.hunt.model.entity.Travel;


/**
 * 
 *Travel接口
 * @Author: zmk
 * @Date : 2018/5/30
 */
public interface TravelMapper {
	//增加
	public void save(Travel travel);
	
	//修改
	public void update(Travel travel);

    //通过id进行查询
    public Travel findById(int id);

    //查询全部
    public List<Travel> findAll();
    
    //删除
    public void deleteById(int id);
}
