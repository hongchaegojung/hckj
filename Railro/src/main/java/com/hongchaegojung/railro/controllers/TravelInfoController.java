package com.hongchaegojung.railro.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/travelInfo/*")
public class TravelInfoController {
	@RequestMapping(value={"travelInfoMain.htm"}, method=RequestMethod.GET)
	public String main(){
		return "travelInfo.travelInfoMain";
	}

}
