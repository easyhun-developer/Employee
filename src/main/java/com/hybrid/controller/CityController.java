package com.hybrid.controller;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hybrid.command.CityCommand;
import com.hybrid.model.City;
import com.hybrid.model.CityList;
import com.hybrid.model.CityPage;
import com.hybrid.service.CityListService;
import com.hybrid.service.CityPageService;

@Controller
@RequestMapping("/city")
public class CityController {
	static Log log = LogFactory.getLog(CityController.class);
	
	@Autowired	//필드 주입
	CityListService CityListService;
	
	@Autowired
	CityPageService CityPageService;
	
	/*
	* main.html
	*/
	@RequestMapping(value="/main.html", method=RequestMethod.GET)
	public String getView() {
		log.info("getMainView()...");
		
		return "city/main"; // /WEB-INF/view/city/main.jsp
	}
	
	/*
	* list.html
	*/
	@RequestMapping(value="/list.html", method=RequestMethod.GET)
	public String getListView() {
		log.info("getListView()...");
		
		return "city/list"; // /WEB-INF/view/city/list.jsp
	}
	
	/*
	* detail.html
	*/
	@RequestMapping(value="/detail.html", method=RequestMethod.GET)
	public String getDetailView() {
		log.info("getDetailView()...");
		
		return "city/detail"; // /WEB-INF/view/city/detail.jsp
	}
	
	/*
	* append.html
	*/
	@RequestMapping(value = "/append.html", method=RequestMethod.GET)
	public String getAppendView() {
		log.info("getAppendView()...");
		
		return "city/append"; // /WEB-INF/view/city/append.jsp
	}
	
	/*
	* modify.html
	*/
	@RequestMapping(value = "/modify.html", method=RequestMethod.GET)
	public String getModifyView() {
		log.info("getModifyView()...");
		
		return "city/modify"; // /WEB-INF/view/city/modify.jsp
	}
	
	/*
	* delete.html
	*/
	@RequestMapping(value = "/delete.html", method=RequestMethod.GET)
	public String getDeleteView() {
		log.info("getDeleteView()...");
		
		return "city/delete"; // /WEB-INF/view/city/delete.jsp
	}
	
	/*
	* URL_GET_LIST = [/city] or [/city/]
	* Accept = application/json
	*/
	@RequestMapping(value={"", "/"}, method=RequestMethod.GET)
//	@RequestMapping(value={"", "/"})
	@ResponseBody
	public CityList getCityAll() {
		log.info("getCityAll()...");
		CityList list = CityListService.getList();		
		return list;
	}
	
	/*
	* URL_GET_ITEM_BASE = [/city/{id}]
	* Accept = application/json
	*/
	@RequestMapping(value="/{id:[0-9]+}", method=RequestMethod.GET)
	@ResponseBody
	public City getCityItem(@PathVariable int id){
		log.info("getCityItem()... id = "+id);
		City city = new City();
		city.setId(id);
		city.setName("seoul");
		return city;
	}
	
	/*
	* URL_GET_PAGE = [/city/page/{pageNoxxx}]
	* Accept = application/json
	*/	
	@RequestMapping(value= "/page/{pageNo:[0-9]+}", method=RequestMethod.GET)		//숫자를 입력하면 아래의 pageNo에 들어간다
	//[0-9]하나쓰면 한자리,[0-9][0-9]두개쓰면 두자리 세개쓰면 세자리수를 사용한다
	//[0-9]+로 쓰면 한자리 이상이란뜻으로 모든정수가 사용이 가능해진다
	@ResponseBody
	public CityPage getCityPage(@PathVariable int pageNo){
		log.info("getCityPage()... pageNo = " + pageNo);
		
		CityPage page = CityPageService.getPage(pageNo);

		return page;
	}
	
	/*
	* URL_POST_ITEM_APPEND = [/city] or [/city/]
	* Accept = application/json
	*/
	@RequestMapping(value={"","/"}, method=RequestMethod.POST)
	@ResponseBody
	public CityCommand postCityAppend(@RequestBody CityCommand city){
		log.info("postCityAppend()... city.id = "+city.getId());
		return city;
	}
	
	/*
	* URL_PUT_ITEM_MODIFY = [/city/{id}]
	* Accept = application/json
	*/
	@RequestMapping(value="/{id:[0-9]+}", method=RequestMethod.PUT)
	@ResponseBody
	public CityCommand putCityModify(@PathVariable int id, @RequestBody CityCommand city){
		log.info("putCityModify()... id = "+id);
		log.info("putCityModify()... city id = "+city.getId());
		return city;
	}
	
	/*
	* URL_DELETE_ITEM_DELETE = [/city/{id}]
	* Accept = application/json
	*/
	@RequestMapping(value="/{id:[0-9]+}", method=RequestMethod.DELETE)
	@ResponseBody
	public CityCommand deleteCity(@PathVariable int id){
		log.info("deleteCity()... id = "+id);
		CityCommand city = new CityCommand();
		city.setId(id);
		return city;
	}
	
}
