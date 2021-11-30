package com.auction.OnlineAuction.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.auction.OnlineAuction.dao.AuctionDao;
import com.auction.OnlineAuction.model.Auction;

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
	
	@PostMapping(value = "/newListing")
	public ResponseEntity<Auction> addProduct(@RequestBody Auction auc){
		Auction auc1 = auctionDao.newAuction(auc);
		return ResponseEntity.ok().body(auc1);
	}
	
	
}
