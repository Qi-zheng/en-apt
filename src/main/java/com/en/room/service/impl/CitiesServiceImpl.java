package com.en.room.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.en.room.entity.Cities;
import com.en.room.repository.CitiesDAO;
import com.en.room.service.CitiesService;

@Service
public class CitiesServiceImpl implements CitiesService {

	@Autowired
	CitiesDAO citiesDAO;
	@Override
	public List<Cities> findRoom() {
		return citiesDAO.findRoom();
	}

}
