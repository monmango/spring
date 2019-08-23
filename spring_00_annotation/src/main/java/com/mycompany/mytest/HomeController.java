package com.mycompany.mytest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.JsonObject;

@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private HomeService homeService;
	
	@Autowired
	public MySample mySample;
	
	public HomeController() {}
		
	public void setHomeService(HomeService homeService) {
		this.homeService = homeService;
	}
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		return "home";
	}

	@RequestMapping("proc")
	public String inputProc(String name, String message) {
		System.out.println(name + " : " + message);
		mySample.func();
		homeService.process();
		return "home";
	}
	
	@RequestMapping("dataJson")
	public @ResponseBody String dataProc(String data1, String data2) {
		JsonObject obj = new JsonObject();
		obj.addProperty("data1", data1);
		obj.addProperty("data2", data2);
		return new Gson().toJson(obj); /*제이손값으로 넘겨준다.*/
	}

}// end class
