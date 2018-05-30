package com.hunt.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hunt.dao.NewsMapper;
import com.hunt.model.entity.News;
import com.hunt.service.NewsService;

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
	
	
}
