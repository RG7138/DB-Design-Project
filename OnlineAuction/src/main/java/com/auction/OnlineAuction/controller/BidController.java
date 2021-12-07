package com.auction.OnlineAuction.controller;

import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.auction.OnlineAuction.dao.BidDao;
import com.auction.OnlineAuction.dao.BuyerDao;
import com.auction.OnlineAuction.dao.ProductDao;
import com.auction.OnlineAuction.model.Bid;
import com.auction.OnlineAuction.model.Buyer;
import com.auction.OnlineAuction.model.Product;
import com.auction.OnlineAuction.model.User;

@RestController
@RequestMapping("/bids")
public class BidController {

	@Autowired
	BidDao bidDao;
	
	@Autowired
	BuyerDao buyerDao;
	
	@Autowired
	ProductDao productDao;
	
	@GetMapping(value = "/all")
	public ModelAndView getAllBids() {
		
		ModelAndView model = new ModelAndView("viewBid");
		model.addObject("bids", bidDao.getBidDetails());
		return model;
		
	}
	
	@GetMapping(value = "/getBids")
	public ModelAndView bids(HttpSession session) {
		
		User user = (User) session.getAttribute("user");
		Buyer buyer = buyerDao.getBuyerByUserId(user.getUserId());
		List<Bid> bids = bidDao.getBidDetailsByBuyerId(buyer.getBuyerId());
		ModelAndView model = new ModelAndView("myBids");
		model.addObject("bids", bids);
		return model;
		
	}
	
	@PostMapping("/addBid")
	public ModelAndView addBids(@RequestParam("userBid") int userBid, @RequestParam("productId") int productId, HttpSession session) {
		
		User user = (User) session.getAttribute("user");
		Buyer buyer = buyerDao.getBuyerByUserId(user.getUserId());
		Bid bid = new Bid();
		bid.setBuyer(buyer);
		bid.setBidPrice(userBid);
		bid.setProduct(productDao.getProductByProductId(productId));
		long millis=System.currentTimeMillis();  
        Date date = new Date(millis);
		bid.setBidTime(date);
		
		Bid addedBid = bidDao.saveBid(bid);
		if(addedBid!=null) {
			Product product = productDao.getProductByProductId(productId);
			product.setMaxBidPrice(addedBid.getBidPrice());
			productDao.updateProduct(product);
		}
		List<Bid> bids = bidDao.getBidDetailsByBuyerId(buyer.getBuyerId());
		return new ModelAndView("myBids","bids",bids);
	}
	
}
