package com.revature.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

	// Mapping for the home page
	@GetMapping("/")
	public String home() {
		return "home"; // Renders home.jsp
	}

}