package com.hunt.frontend.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.github.pagehelper.PageHelper;
import com.hunt.frontend.dao.ProclamationMapper;
import com.hunt.frontend.service.ProclamationService;
import com.hunt.model.dto.PageInfo;
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

	@Override
	public PageInfo findPage(int page, int state,int state2) {
		int count = proclamationMapper.findCount(state,state2);
		 PageHelper.startPage(page, 10);
		 List<Proclamation> list = proclamationMapper.findAllByState(state,state2);
		return new PageInfo(count,list);
	}

	@Override
	public Proclamation findById(int id) {
		return proclamationMapper.findById(id);
	}
	
	
}
