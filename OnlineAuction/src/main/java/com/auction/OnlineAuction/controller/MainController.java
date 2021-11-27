package com.auction.OnlineAuction.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.auction.OnlineAuction.model.User;

@RestController
@RequestMapping("/auction")
public class MainController {

	
	@GetMapping("")
	public ModelAndView loadLogin() {
		
		return new ModelAndView("login", "user", new User());
		
	}
}
