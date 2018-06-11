package com.hunt.frontend.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.github.pagehelper.PageHelper;
import com.hunt.frontend.dao.PolicyMapper;
import com.hunt.frontend.service.PolicyService;
import com.hunt.model.dto.PageInfo;
import com.hunt.model.entity.Policy;


@Transactional
@Service
public class PolicyServiceImpl implements PolicyService{
	
	@Autowired
    private PolicyMapper policyMapper;

	@Override
	public void save(Policy policy) {
		policyMapper.save(policy);
		
	}

	@Override
	public void delete(int id) {
		policyMapper.delete(id);
		
	}

	@Override
	public void update(Policy policy) {
		policyMapper.update(policy);
		
	}

	@Override
	public List<Policy> findAll() {
		return policyMapper.findAll();
	}

	@Override
	public Policy findById(int id) {
		return policyMapper.findById(id);
	}

	@Override
	public PageInfo findPage(int page,int state) {
		 int count = policyMapper.findCount(state);
		 PageHelper.startPage(page, 10);
		 List<Policy> list = policyMapper.findAllByState(state);
		return new PageInfo(count, list);
	}

	@Override
	public List<Policy> WX_findAll() {
		// TODO Auto-generated method stub
		return policyMapper.findAll();
	}
	
	
}
