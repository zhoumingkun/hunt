package com.hunt.frontend.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.github.pagehelper.PageHelper;
import com.hunt.frontend.dao.EnterpriseMapper;
import com.hunt.frontend.service.EnterpriseService;
import com.hunt.model.dto.PageInfo;
import com.hunt.model.entity.Enterprise;
import com.hunt.model.entity.Guide;
@Transactional
@Service
public class EnterpriseServiceImpl implements EnterpriseService {
 
	@Autowired
	private EnterpriseMapper enterpriseMapper;
	
	@Override
	public void save(Enterprise enterprise) {
		enterpriseMapper.save(enterprise);
	}

	@Override
	public void delete(int id) {
		enterpriseMapper.delete(id);
	}

	@Override
	public void update(Enterprise enterprise) {
		enterpriseMapper.update(enterprise);
	}

	@Override
	public List<Enterprise> findAll() {
		return enterpriseMapper.findAll();
	}
	
	@Override
	public PageInfo findPage(int page,int state,String trade) {
		 int count = enterpriseMapper.findCount(state,trade);
		 PageHelper.startPage(page, 10);
		 List<Enterprise> list = enterpriseMapper.findAllByState(state,trade);
		return new PageInfo(count, list);
	}

	@Override
	public Enterprise findById(int id) {
		// TODO Auto-generated method stub
		return enterpriseMapper.findById(id);
	}

}
