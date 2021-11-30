package com.auction.OnlineAuction.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.auction.OnlineAuction.dao.BidDao;
import com.auction.OnlineAuction.model.Bid;
import com.auction.OnlineAuction.model.Product;
import com.auction.OnlineAuction.model.User;
import com.auction.OnlineAuction.repository.BidRepository;

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
	
	@PostMapping(value = "/newbid")
	public ResponseEntity<Bid> addBid(@RequestBody Bid bid){
		Bid bid1 = bidDao.newBid(bid);
		return ResponseEntity.ok().body(bid1);
	}
	
	@GetMapping(value= "")
	public ModelAndView getAllProductBids(@ModelAttribute Product prod) {
		ModelAndView model = new ModelAndView("");
		model.addObject("bids",bidDao.maxBidforaProduct(prod.getProductId()));
		return model;
	}
	
}
