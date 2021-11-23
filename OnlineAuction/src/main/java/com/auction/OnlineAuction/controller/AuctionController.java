package com.auction.OnlineAuction.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.auction.OnlineAuction.dao.AuctionDao;

@RestController
@RequestMapping("/auction")
public class AuctionController {

	@Autowired
	AuctionDao auctionDao;
	
	@GetMapping(value = "/all")
	public ModelAndView getAllAuctions() {
		
		ModelAndView model = new ModelAndView("viewAuction");
		model.addObject("auctions", auctionDao.getAuctionDetails());
		return model;
		
	}
}
