package com.hunt.frontend.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hunt.frontend.dao.CultureMapper;
import com.hunt.frontend.service.CultureService;
import com.hunt.model.entity.Culture;
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
	
	
}
