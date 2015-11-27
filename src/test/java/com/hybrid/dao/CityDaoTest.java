package com.hybrid.dao;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.context.support.GenericXmlApplicationContext;

import com.hybrid.model.City;
import com.hybrid.model.Dept;
import com.hybrid.util.Pagination;

public class CityDaoTest {

	static Log log = LogFactory.getLog(CityDaoTest.class);
	
	public static void main(String[] args) {
		GenericXmlApplicationContext ctx=null;
		ctx = new GenericXmlApplicationContext("spring/beans_dao.xml");
		
		CityDao dao = ctx.getBean(CityDao.class);

		log.info("totalItem = " + dao.selectCount());
		List<City> list = dao.selectAll();
		log.info("city list size = " + list.size());
		
		Pagination paging = new Pagination();
		paging.setPageNo(5);
		paging.setTotalItem(dao.selectCount());
		
		List<City> page = dao.selectPage(paging);
		log.info("page size = " +page.size());
	}

}
