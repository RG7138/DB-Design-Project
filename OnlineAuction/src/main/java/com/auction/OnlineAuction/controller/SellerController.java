package com.auction.OnlineAuction.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.auction.OnlineAuction.dao.SellerDao;

@RestController
@RequestMapping("/seller")
public class SellerController {

	@Autowired
	SellerDao sellerDao;
	
	@GetMapping(value = "/all")
	public ModelAndView getAllSellers() {
		
		ModelAndView model = new ModelAndView("viewSeller");
		model.addObject("sellers", sellerDao.getSellerDetails());
		return model;
		
	}
}
