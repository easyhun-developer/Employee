package com.hybrid.model;

import java.util.List;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlElementWrapper;
import javax.xml.bind.annotation.XmlRootElement;

import com.hybrid.util.Pagination;

@XmlRootElement(name="Response")
@XmlAccessorType(XmlAccessType.FIELD)
public class CityPage {
	
	@XmlElementWrapper(name="citys")
	@XmlElement(name="city")
	List<City> citys;
	
	Pagination paging;

	public List<City> getCitys() {
		return citys;
	}

	public void setCitys(List<City> citys) {
		this.citys = citys;
	}

	public Pagination getPaging() {
		return paging;
	}

	public void setPaging(Pagination paging) {
		this.paging = paging;
	}
	
	

}
