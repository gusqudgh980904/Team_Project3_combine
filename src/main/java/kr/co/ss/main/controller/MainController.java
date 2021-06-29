package kr.co.ss.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class MainController {
	
	@RequestMapping(value = "/main/main_all.do")
	public String mainForm() {
		
		return "prj2/main/main_all";
	}
}
