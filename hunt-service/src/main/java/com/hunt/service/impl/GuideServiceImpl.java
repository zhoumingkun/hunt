package com.hunt.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hunt.dao.ActivityMapper;
import com.hunt.dao.GuideMapper;
import com.hunt.model.entity.Guide;
import com.hunt.service.ActivityService;
import com.hunt.service.GuideService;

@Service
public class GuideServiceImpl implements GuideService{
	@Autowired
    private GuideMapper guideMapper;

	@Override
	public void save(Guide guide) {
		// TODO Auto-generated method stub
		guideMapper.update(guide);
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

	
	

	
	
}
