package com.hybrid.command;

import java.util.HashMap;
import java.util.Map;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.hybrid.model.City;

@JsonIgnoreProperties(value = "city")
public class CityCommand {
	private int id;
	private String name;
	private String countryCode;
	private String district;
	private Integer population;
	
	private Map<String, Object> errorMessage;
	
	public CityCommand(){
		errorMessage = new HashMap<>();
	}
	
	public Map<String, Object> getErrorMessage(){
		return errorMessage;
	}
	
	public void validate() {
		/*
		* name validation
		*/
		
		/*
		* countryCode validation
		*/
		
		/*
		* district validation
		*/
		
		/*
		* population validation
		*/
	}
	
	public boolean isValid(){
		if(errorMessage.size() > 0)
			return false;
		
		return true;
	}
	
	public City getCity() {
		City c = new City();
//		c.setId(id);
		c.setName(name);
		c.setCountryCode(countryCode);
		c.setDistrict(district);
		c.setPopulation(population);
		
		return c;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCountryCode() {
		return countryCode;
	}
	public void setCountryCode(String countryCode) {
		this.countryCode = countryCode;
	}
	public String getDistrict() {
		return district;
	}
	public void setDistrict(String district) {
		this.district = district;
	}
	public Integer getPopulation() {
		return population;
	}
	public void setPopulation(Integer population) {
		this.population = population;
	}
	
	
	
}
