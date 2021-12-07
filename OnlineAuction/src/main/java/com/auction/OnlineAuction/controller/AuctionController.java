package com.auction.OnlineAuction.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.auction.OnlineAuction.dao.AuctionDao;
import com.auction.OnlineAuction.dao.SellerDao;
import com.auction.OnlineAuction.model.Auction;
import com.auction.OnlineAuction.model.Seller;
import com.auction.OnlineAuction.model.User;

@RestController
@RequestMapping("/auctions")
public class AuctionController {

	@Autowired
	AuctionDao auctionDao;
	
	@Autowired
	SellerDao sellerDao;
	
	@GetMapping(value = "/all")
	public ModelAndView getAllAuctions() {
		
		ModelAndView model = new ModelAndView("viewAuction");
		model.addObject("auctions", auctionDao.getAuctionDetails());
		return model;
		
	}
	
	@GetMapping(value = "/getAuctions")
	public ModelAndView auctions(HttpSession session) {
		
		User user = (User) session.getAttribute("user");
		Seller seller= sellerDao.getSellerByUserId(user.getUserId());
		List<Auction> auctions = auctionDao.getAuctionDetailsBySellerId(seller.getSellerId());
		ModelAndView model = new ModelAndView("myAuctions");
		model.addObject("auctions", auctions);
		return model;
		
	}
}
