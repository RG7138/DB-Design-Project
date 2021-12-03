package com.auction.OnlineAuction.controller;

import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.auction.OnlineAuction.dao.AuctionDao;
import com.auction.OnlineAuction.dao.BuyerDao;
import com.auction.OnlineAuction.dao.FeedbackDao;
import com.auction.OnlineAuction.dao.ProductDao;
import com.auction.OnlineAuction.dao.SellerDao;
import com.auction.OnlineAuction.model.Auction;
import com.auction.OnlineAuction.model.Feedback;
import com.auction.OnlineAuction.model.Product;
import com.auction.OnlineAuction.model.Seller;
import com.auction.OnlineAuction.model.User;

@RestController
@RequestMapping("/feedback")
public class FeedbackController {

	@Autowired
	FeedbackDao feedbackDao;
	
	@Autowired
	SellerDao sellerDao;
	
	@Autowired
	ProductDao productDao;
	
	@Autowired
	BuyerDao buyerDao;
	
	@Autowired
	AuctionDao auctionDao;
	
	@GetMapping(value = "/all")
	public ModelAndView getAllFeedbacks() {
		
		ModelAndView model = new ModelAndView("viewFeedback");
		model.addObject("feedbacks", feedbackDao.getFeedbackDetails());
		return model;
		
	}
	
	@GetMapping("/sellerFeedbacks")
	public ModelAndView sellerFeedbacks(HttpSession session) {
		User user = (User)session.getAttribute("user");
		Seller seller = sellerDao.getSellerByUserId(user.getUserId());
		List<Feedback> feedbacks = feedbackDao.getFeedbacksBySellerId(seller.getSellerId());
		return new ModelAndView("sellerFeedbacks","feedbacks",feedbacks);
	}
	
	@PostMapping("/sendFeedback")
	public ModelAndView sendFeedbackToSeller(@ModelAttribute("feedback") Feedback feedback, HttpSession session, 
			@RequestParam("selectedProduct") Product product, Model model) {
		
		User user= (User) session.getAttribute("user");
		feedback.setBuyer(buyerDao.getBuyerByUserId(user.getUserId()));
		feedback.setProduct(product);
		Auction auction = auctionDao.getAuctionByProductId(product.getProductId());
		feedback.setSeller(auction.getSeller());
		long millis=System.currentTimeMillis();  
        Date date = new Date(millis);
		feedback.setFeedbackTime(date);
		feedbackDao.saveFeedback(feedback);
		
		List<Product> productList = productDao.getRecommendedProduct(PageRequest.of(0, 4));
		model.addAttribute("productList",productList);
		return new ModelAndView("index","user",user);
	}
		
}
