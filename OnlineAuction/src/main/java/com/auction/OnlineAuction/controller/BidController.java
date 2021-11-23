package com.auction.OnlineAuction.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.auction.OnlineAuction.dao.BidDao;

@RestController
@RequestMapping("/bid")
public class BidController {

	@Autowired
	BidDao bidDao;
	
	@GetMapping(value = "/all")
	public ModelAndView getAllBids() {
		
		ModelAndView model = new ModelAndView("viewBid");
		model.addObject("bids", bidDao.getBidDetails());
		return model;
		
	}
}
