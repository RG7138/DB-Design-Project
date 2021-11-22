package com.auction.OnlineAuction.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.auction.OnlineAuction.dao.FeedbackDao;

@RestController
@RequestMapping("/feedback")
public class FeedbackController {

	@Autowired
	FeedbackDao feedbackDao;
	
	@GetMapping(value = "/all")
	public ModelAndView getAllFeedbacks() {
		
		ModelAndView model = new ModelAndView("viewFeedback");
		model.addObject("feedbackss", feedbackDao.getFeedbackDetails());
		return model;
		
	}
}
