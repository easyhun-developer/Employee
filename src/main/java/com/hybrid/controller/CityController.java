package com.hybrid.controller;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hybrid.model.City;
import com.hybrid.model.CityList;
import com.hybrid.model.CityPage;
import com.hybrid.service.CityListService;
import com.hybrid.service.CityPageService;
import com.hybrid.util.Pagination;

@Controller
@RequestMapping("/city")
public class CityController {
	static Log log = LogFactory.getLog(CityController.class);
	
	@Autowired
	CityListService CityListService;
	
	@Autowired
	CityPageService CityPageService;
	
	@RequestMapping("/city.html")
	public String getView() {
		log.info("getView()...");
		
		return "city/city"; // /WEB-INF/view/city/city.jsp
	}
	
	@RequestMapping(value={"", "/"})
	@ResponseBody
	public CityList getCityAll() {
		
		CityList list = CityListService.getList();
		
		return list;
	}
	
	@RequestMapping("/page/{pageNo:[0-9]+}")		//숫자를 입력하면 아래의 pageNo에 들어간다
	//[0-9]하나쓰면 한자리,[0-9][0-9]두개쓰면 두자리 세개쓰면 세자리수를 사용한다
	//[0-9]+로 쓰면 한자리 이상이란뜻으로 모든정수가 사용이 가능해진다
	@ResponseBody
	public CityPage getCityPage(@PathVariable int pageNo){
		log.info("pageNo = " + pageNo);
		
		CityPage page = CityPageService.getPage(pageNo);

		return page;
	}
	
}
