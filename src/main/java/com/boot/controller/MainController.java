package com.boot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {
	   @GetMapping("/main")
	    public String hello (Model model) {
//	        model.addAttribute("data", "hello!!");
	        return "/main";
	    }
	   

}
