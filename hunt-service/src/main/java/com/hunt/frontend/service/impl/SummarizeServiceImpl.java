package com.hunt.frontend.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hunt.frontend.dao.ActivityMapper;
import com.hunt.frontend.dao.SummarizeMapper;
import com.hunt.frontend.service.ActivityService;
import com.hunt.frontend.service.SummarizeService;
import com.hunt.model.entity.Summarize;
/**
 * 
 *概况实现类
 * @Author: zmk
 * @Date : 2018/5/30
 */
@Service
public class SummarizeServiceImpl implements SummarizeService{
	@Autowired
    private SummarizeMapper summarizeMapper;

	@Override
	public void save( Summarize  summarize) {
		// TODO Auto-generated method stub
		summarizeMapper.update(summarize);
	}

	@Override
	public void update( Summarize  summarize) {
		// TODO Auto-generated method stub
		summarizeMapper.update(summarize);
	}

	@Override
	public  Summarize findById(int id) {
		// TODO Auto-generated method stub
		return summarizeMapper.findById(id);
	}

	@Override
	public List< Summarize> findAll() {
		// TODO Auto-generated method stub
		return summarizeMapper.findAll();
	}

	@Override
	public void deleteById(int id) {
		// TODO Auto-generated method stub
		summarizeMapper.deleteById(id);
	}

	
	

	
	
}
