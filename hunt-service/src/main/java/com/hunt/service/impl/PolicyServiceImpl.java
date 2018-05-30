package com.hunt.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hunt.dao.PolicyMapper;
import com.hunt.model.entity.Policy;
import com.hunt.service.PolicyService;


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
	
	
}
