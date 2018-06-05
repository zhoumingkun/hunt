package com.hunt.frontend.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.hunt.model.entity.Guide;

/**
 * 
 *服务指南接口
 * @Author: zmk
 * @Date : 2018/5/30
 */


public interface GuideMapper {
	//增加
	public void save(Guide guide);
	
	//修改
	public void update(Guide guide);

    //通过id进行查询
    public Guide findById(int id);

    //查询全部
    public List<Guide> findAll();
    
    //删除
    public void deleteById(int id);

    //根据状态查询数量
  	public int findCount();
}
