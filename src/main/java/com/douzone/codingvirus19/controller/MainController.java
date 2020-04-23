package com.douzone.codingvirus19.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.douzone.codingvirus19.service.MainService;


@Controller
@RequestMapping
public class MainController {
	
	@Autowired
	MainService mainService;
	
	@RequestMapping("/main")
	public String main() {
		return "main/main";
	}
	
	

}
