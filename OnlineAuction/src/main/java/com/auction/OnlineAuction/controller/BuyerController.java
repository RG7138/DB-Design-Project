package com.auction.OnlineAuction.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.auction.OnlineAuction.dao.AdminDao;
import com.auction.OnlineAuction.dao.BuyerDao;
import com.auction.OnlineAuction.dao.UserDao;
import com.auction.OnlineAuction.model.Buyer;
import com.auction.OnlineAuction.model.User;

@RestController
@RequestMapping("/buyer")
public class BuyerController {

	@Autowired
	BuyerDao buyerDao;
	
	@Autowired
	AdminDao adminDao;
	
	@Autowired
	UserDao userDao;
	
	@GetMapping(value = "/all")
	public ModelAndView getAllBuyers() {
		
		ModelAndView model = new ModelAndView("viewBuyer");
		model.addObject("buyers", buyerDao.getBuyerDetails());
		return model;
		
	}
	
	@GetMapping(value = "/sign-up")
	public ModelAndView buyerSignUp() {
		
				return new ModelAndView("signupBuyer","buyer",new Buyer());
		
	}
	
	@PostMapping(value = "/save")
	public ModelAndView saveBuyer(@ModelAttribute("buyer") Buyer buyer) {
		
		buyer.getUser().setRole("buyer");
		buyer.getUser().setAdmin(adminDao.getAdminDetails().get(0));
		User user = userDao.addUser(buyer.getUser());
		buyer.getUser().setUserId(user.getUserId());
		buyerDao.addBuyer(buyer);
		return new ModelAndView("login", "user",user);
		
	}
	
	@GetMapping(value = "/buy")
	public ModelAndView buy() {
		
		return new ModelAndView("buy");
		
	}
}
