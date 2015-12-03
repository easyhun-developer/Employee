package com.hybrid.dao;

import java.util.List;

import org.aspectj.apache.bcel.generic.ReturnaddressType;

import com.hybrid.mapper.CityMapper;
import com.hybrid.model.City;
import com.hybrid.util.Pagination;

public class CityDao {
	CityMapper cityMapper;
	
	public void setCityMapper(CityMapper mapper){
		this.cityMapper = mapper;
	}
	
	public int selectCount(){
		return cityMapper.selectCount();
	}
	public List<City> selectAll(){
		return cityMapper.selectAll();
	}
	public List<City> selectPage(Pagination paging){
		return cityMapper.selectPage(paging);
	}
	public List<City> selectByCountryCode(String countryCode){
		return cityMapper.selectByCountryCode(countryCode);
	}
	
	public int insert(City city){
		int rtn = cityMapper.insert(city);
		return city.getId();
	}
	public int deleteAll(){
		return cityMapper.deleteAll();
	}
	
}
