package com.auction.OnlineAuction.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.auction.OnlineAuction.dao.BuyerDao;

@RestController
@RequestMapping("/buyer")
public class BuyerController {

	@Autowired
	BuyerDao buyerDao;
	
	@GetMapping(value = "/all")
	public ModelAndView getAllBuyers() {
		
		ModelAndView model = new ModelAndView("viewBuyer");
		model.addObject("buyers", buyerDao.getBuyerDetails());
		return model;
		
	}
}
