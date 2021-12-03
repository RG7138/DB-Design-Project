package com.auction.OnlineAuction.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.auction.OnlineAuction.dao.FeedbackDao;
import com.auction.OnlineAuction.dao.SellerDao;
import com.auction.OnlineAuction.model.Feedback;
import com.auction.OnlineAuction.model.Seller;
import com.auction.OnlineAuction.model.User;

@RestController
@RequestMapping("/feedback")
public class FeedbackController {

	@Autowired
	FeedbackDao feedbackDao;
	
	@Autowired
	SellerDao sellerDao;
	
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
}
