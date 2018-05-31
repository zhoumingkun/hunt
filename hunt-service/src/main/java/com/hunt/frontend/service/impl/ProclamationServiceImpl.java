package com.hunt.frontend.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hunt.frontend.dao.ProclamationMapper;
import com.hunt.frontend.service.ProclamationService;
import com.hunt.model.entity.Proclamation;

@Transactional
@Service
public class ProclamationServiceImpl implements ProclamationService{
	
	@Autowired
    private ProclamationMapper proclamationMapper;

	@Override
	public void save(Proclamation proclamation) {
		proclamationMapper.save(proclamation);
		
	}

	@Override
	public void delete(int id) {
		proclamationMapper.delete(id);
		
	}

	@Override
	public void update(Proclamation proclamation) {
		proclamationMapper.update(proclamation);
		
	}

	@Override
	public List<Proclamation> findAll() {
		return proclamationMapper.findAll();
	}
	
	
}
