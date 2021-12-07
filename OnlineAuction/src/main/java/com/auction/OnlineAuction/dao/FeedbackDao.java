package com.auction.OnlineAuction.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.auction.OnlineAuction.model.Feedback;
import com.auction.OnlineAuction.repository.FeedbackRepository;

@Service
public class FeedbackDao {

	@Autowired
	FeedbackRepository feedbackRepository;
	
	public List<Feedback> getFeedbackDetails() {
		return feedbackRepository.findAll();
	}
	
	public List<Feedback> getFeedbacksBySellerId(int sellerId){
		return feedbackRepository.getFeedbacksBySellerId(sellerId);
	}
	
	public void saveFeedback(Feedback feedback) {
		feedbackRepository.save(feedback);
	}
}
