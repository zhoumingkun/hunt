package com.hunt.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hunt.dao.ActivityMapper;
import com.hunt.dao.ProjectMapper;
import com.hunt.model.entity.Project;
import com.hunt.service.ActivityService;
import com.hunt.service.ProjectService;

@Service
public class ProjectServiceImpl implements ProjectService{
	@Autowired
    private ProjectMapper projectMapper;

	@Override
	public void save(Project project) {
		// TODO Auto-generated method stub
		projectMapper.update(project);
	}

	@Override
	public void update(Project project) {
		// TODO Auto-generated method stub
		projectMapper.update(project);
	}

	@Override
	public Project findById(int id) {
		// TODO Auto-generated method stub
		return projectMapper.findById(id);
	}

	@Override
	public List<Project> findAll() {
		// TODO Auto-generated method stub
		return projectMapper.findAll();
	}

	@Override
	public void deleteById(int id) {
		// TODO Auto-generated method stub
		projectMapper.deleteById(id);
	}

	
	

	
	
}
