package com.auction.OnlineAuction.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.auction.OnlineAuction.dao.ProductDao;
import com.auction.OnlineAuction.model.Feedback;
import com.auction.OnlineAuction.model.User;

@RestController
@RequestMapping("/auction")
public class MainController {

	
	@Autowired
	ProductDao productDao;
	
	@GetMapping("")
	public ModelAndView loadLogin() {
		
		return new ModelAndView("login", "user", new User());
		
	}
	
	@GetMapping("/service")
	public ModelAndView loadServices() {
		
		return new ModelAndView("services");
		
	}
	
	@GetMapping("/feedback")
	public ModelAndView loadFeedbacks(Model model) {
		
		model.addAttribute("productList", productDao.getProductDetails());
		return new ModelAndView("feedback","feedback", new Feedback());
		
	}
	
	@GetMapping("/logout")
	public ModelAndView logout(HttpSession session) {
		session.removeAttribute("user");
		return new ModelAndView("login","user",new User());
		
	}
}
