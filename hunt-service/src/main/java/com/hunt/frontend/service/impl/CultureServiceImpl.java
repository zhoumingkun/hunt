package com.hunt.frontend.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.github.pagehelper.PageHelper;
import com.hunt.frontend.dao.CultureMapper;
import com.hunt.frontend.service.CultureService;
import com.hunt.model.dto.PageInfo;
import com.hunt.model.entity.Culture;
import com.hunt.model.entity.Travel;
@Transactional
@Service
public class CultureServiceImpl implements CultureService{
	
	@Autowired
    private CultureMapper cultureMapper;

	@Override
	public void save(Culture culture) {
		cultureMapper.save(culture);
		
	}

	@Override
	public void delete(int id) {
		cultureMapper.delete(id);
		
	}

	@Override
	public void update(Culture culture) {
		cultureMapper.update(culture);
		
	}

	@Override
	public List<Culture> findAll() {
		return cultureMapper.findAll();
	}
	
	@Override
	public PageInfo findPage(int page) {
		 int count = cultureMapper.findCount();
		 PageHelper.startPage(page, 10);
		 List<Culture> list = cultureMapper.findAll();
		return new PageInfo(count, list);
	}

	@Override
	public Culture findById(int id) {
		// TODO Auto-generated method stub
		return cultureMapper.findById(id);
	}
	
}
