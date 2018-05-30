package com.hunt.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.hunt.dao.TravelMapper;
import com.hunt.model.entity.Travel;
import com.hunt.service.TravelService;


@Service
public class TravelServiceImpl implements TravelService{
	@Autowired
    private TravelMapper travelMapper;

	@Override
	public void save(Travel travel) {
		// TODO Auto-generated method stub
		travelMapper.save(travel);
	}

	@Override
	public void update(Travel travel) {
		// TODO Auto-generated method stub
		travelMapper.update(travel);
	}

	@Override
	public Travel findById(int id) {
		// TODO Auto-generated method stub
		return travelMapper.findById(id);
	}

	@Override
	public List<Travel> findAll() {
		// TODO Auto-generated method stub
		return travelMapper.findAll();
	}

	@Override
	public void deleteById(int id) {
		// TODO Auto-generated method stub
		travelMapper.deleteById(id);
	}

}
