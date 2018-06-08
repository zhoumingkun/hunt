package com.hunt.frontend.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.hunt.frontend.dao.ActivityMapper;
import com.hunt.frontend.dao.GuideMapper;
import com.hunt.frontend.service.ActivityService;
import com.hunt.frontend.service.GuideService;
import com.hunt.model.dto.PageInfo;
import com.hunt.model.entity.Activity;
import com.hunt.model.entity.Guide;
/**
 * 
 *服务指南实现类
 * @Author: zmk
 * @Date : 2018/5/30
 */
@Service
public class GuideServiceImpl implements GuideService{
	@Autowired
    private GuideMapper guideMapper;

	@Override
	public void save(Guide guide) {
		// TODO Auto-generated method stub
		guideMapper.save(guide);
	}

	@Override
	public void update(Guide guide) {
		// TODO Auto-generated method stub
		guideMapper.update(guide);
	}

	@Override
	public Guide findById(int id) {
		// TODO Auto-generated method stub
		return guideMapper.findById(id);
	}

	@Override
	public List<Guide> findAll() {
		// TODO Auto-generated method stub
		return guideMapper.findAll();
	}

	@Override
	public void deleteById(int id) {
		// TODO Auto-generated method stub
		guideMapper.deleteById(id);
	}

	@Override
	public PageInfo findPage(int page) {
		 int count = guideMapper.findCount();
		 PageHelper.startPage(page, 10);
		 List<Guide> list = guideMapper.findAll();
		return new PageInfo(count, list);
	}
	
	

	
	
}
