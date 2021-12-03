package com.auction.OnlineAuction.controller;

import javax.servlet.http.HttpSession;

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
	
	@GetMapping("/service")
	public ModelAndView loadServices() {
		
		return new ModelAndView("services");
		
	}
	
	@GetMapping("/feedback")
	public ModelAndView loadFeedbacks() {
		
		return new ModelAndView("feedback");
		
	}
	
	@GetMapping("/logout")
	public ModelAndView logout(HttpSession session) {
		session.removeAttribute("user");
		return new ModelAndView("login","user",new User());
		
	}
}
