package com.hybrid.service;

import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.transaction.annotation.Transactional;

import com.hybrid.dao.CityDao;
import com.hybrid.exception.CityRegisterException;
import com.hybrid.model.City;

public class CityDetailService {

	CityDao cityDao;
	
	public void setCityDao(CityDao dao) {
		this.cityDao = dao;
	}

	
	@Transactional
	public City detail(int id) {
		City city = cityDao.selectById(id);
		return city;
	}
}
