package com.hunt.frontend.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.hunt.frontend.dao.TravelMapper;
import com.hunt.frontend.service.TravelService;
import com.hunt.model.dto.PageInfo;
import com.hunt.model.entity.Activity;
import com.hunt.model.entity.Travel;
/**
 * 
 *旅游实现类
 * @Author: zmk
 * @Date : 2018/5/30
 */

@Service
public class TravelServiceImpl implements TravelService{
	@Autowired
    private TravelMapper travelMapper;

	@Override
	public void save(Travel travel) {
		// TODO Auto-generated method stub
		travelMapper.save(travel);
	}

	@Override
	public void update(Travel travel) {
		// TODO Auto-generated method stub
		travelMapper.update(travel);
	}

	@Override
	public Travel findById(int id) {
		// TODO Auto-generated method stub
		return travelMapper.findById(id);
	}

	@Override
	public List<Travel> findAll() {
		// TODO Auto-generated method stub
		return travelMapper.findAll();
	}

	@Override
	public void deleteById(int id) {
		// TODO Auto-generated method stub
		travelMapper.deleteById(id);
	}

	@Override
	public PageInfo findPage(int page) {
		 int count = travelMapper.findCount();
		 PageHelper.startPage(page, 10);
		 List<Travel> list = travelMapper.findAll();
		return new PageInfo(count, list);
	}

}
