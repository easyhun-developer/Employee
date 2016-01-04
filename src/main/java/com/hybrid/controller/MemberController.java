package com.hybrid.controller;

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
import com.hybrid.command.MemberCommand;
import com.hybrid.model.City;
import com.hybrid.model.CityList;
import com.hybrid.model.CityPage;
import com.hybrid.service.CityDetailService;
import com.hybrid.service.CityListService;
import com.hybrid.service.CityModifyService;
import com.hybrid.service.CityPageService;
import com.hybrid.service.CityRegisterService;
import com.hybrid.service.CityUnRegisterService;
import com.hybrid.service.MemberRegisterService;

@Controller
@RequestMapping("/member")
public class MemberController {
	static Log log = LogFactory.getLog(MemberController.class);
	
	@Autowired
	MemberRegisterService memberRegisterService;
	
	/*
	* main.html
	*/
	@RequestMapping(value="/main.html", method=RequestMethod.GET)
	public String getView() {
		log.info("getMainView()...");
		
		return "member/main"; // /WEB-INF/view/member/main.jsp
	}
	
	/*
	* append.html
	*/
	@RequestMapping(value = "/append.html", method=RequestMethod.GET)
	public String getAppendView() {
		log.info("getAppendView()...");
		
		return "member/append"; // /WEB-INF/view/member/append.jsp
	}
	
	/*
	* URL_POST_ITEM_APPEND = [/member] or [/member/]
	* Accept = application/json
	*/
	@RequestMapping(value={"","/"}, method=RequestMethod.POST)
	@ResponseBody
	public MemberCommand postMemberAppend(@RequestBody MemberCommand command){
		log.info("postMemberAppend()... member.id = "+command.getId());
		command.validate();
		if(command.isValid()){
			
		}
		
		long id = memberRegisterService.regist(command.getMember());
		
		return command;
	}
};