package com.hybrid.mapper;

import java.util.List;

import com.hybrid.model.City;
import com.hybrid.util.Pagination;

public interface CityMapper {
	
	int selectCount();
	List<City> selectAll();
	List<City> selectPage(Pagination paging);
	City selectById(int id);
	List<City> selectByCountryCode(String countryCode);
	
	int insert(City city);
	int update(City city);
	int deleteById(int id);
	int deleteAll();
	
}
