package com.auction.OnlineAuction.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.auction.OnlineAuction.dao.AdminDao;
import com.auction.OnlineAuction.dao.SellerDao;
import com.auction.OnlineAuction.dao.UserDao;
import com.auction.OnlineAuction.model.Seller;
import com.auction.OnlineAuction.model.User;

@RestController
@RequestMapping("/seller")
public class SellerController {

	@Autowired
	SellerDao sellerDao;
	
	@Autowired
	AdminDao adminDao;
	
	@Autowired
	UserDao userDao;
	
	@GetMapping(value = "/all")
	public ModelAndView getAllSellers() {
		
		ModelAndView model = new ModelAndView("viewSeller");
		model.addObject("sellers", sellerDao.getSellerDetails());
		return model;
		
	}
	
	@GetMapping(value = "/sign-up")
	public ModelAndView sellerSignup() {
		
		
		return new ModelAndView("signupSeller", "seller", new Seller());
		
	}
	
	@PostMapping(value = "/save")
	public ModelAndView saveSeller(@ModelAttribute("seller") Seller seller) {
		
		seller.getUser().setRole("seller");
		seller.getUser().setAdmin(adminDao.getAdminDetails().get(0));
		User user = userDao.addUser(seller.getUser());
		seller.getUser().setUserId(user.getUserId());
		sellerDao.addSeller(seller);
		return new ModelAndView("login", "user",user);
		
	}
	
	@GetMapping(value = "/sell")
	public ModelAndView sell() {
		
		
		return new ModelAndView("sell");
		
	}
	
}
