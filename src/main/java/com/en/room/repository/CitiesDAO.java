package com.en.room.repository;

import java.util.List;

import com.en.room.entity.Cities;

@MyBatisRepository
public interface CitiesDAO {
	List<Cities> findRoom();
}
