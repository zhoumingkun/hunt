package com.hunt.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hunt.dao.SpecialtyMapper;
import com.hunt.model.entity.Specialty;
import com.hunt.service.SpecialtyService;
@Transactional
@Service
public class SpecialtyServiceImpl implements SpecialtyService{
	
	@Autowired
    private SpecialtyMapper specialtyMapper;

	@Override
	public void save(Specialty specialty) {
		specialtyMapper.save(specialty);
		
	}

	@Override
	public void delete(int id) {
		specialtyMapper.delete(id);
		
	}

	@Override
	public void update(Specialty specialty) {
		specialtyMapper.update(specialty);
		
	}

	@Override
	public List<Specialty> findAll() {
		return specialtyMapper.findAll();
	}
	
	
}
