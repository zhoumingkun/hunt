package com.hunt.frontend.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.github.pagehelper.PageHelper;
import com.hunt.frontend.dao.NewsMapper;
import com.hunt.frontend.service.NewsService;
import com.hunt.model.dto.PageInfo;
import com.hunt.model.entity.Activity;
import com.hunt.model.entity.News;

@Transactional
@Service
public class NewsServiceImpl implements NewsService{
	
	@Autowired
    private NewsMapper newsMapper;

	@Override
	public void save(News news) {
		newsMapper.save(news);
		
	}

	@Override
	public void delete(int id) {
		newsMapper.delete(id);
		
	}

	@Override
	public void update(News news) {
		newsMapper.update(news);
		
	}

	@Override
	public List<News> findAll() {
		return newsMapper.findAll();
	}

	@Override
	public News findById(int id) {
		return newsMapper.findById(id);
	}
	
	
	@Override
	public PageInfo findPage(int page, int state,int state2) {
		 int count = newsMapper.findCount(state,state2);
		 PageHelper.startPage(page, 10);
		 List<News> list = newsMapper.findAllByState(state,state2);
		return new PageInfo(count, list);
	}
	
}
