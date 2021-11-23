package com.auction.OnlineAuction.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.auction.OnlineAuction.dao.ContactMessageDao;

@RestController
@RequestMapping("/contactmessage")
public class ContactMessageController {

	@Autowired
	ContactMessageDao contactMessageDao;
	
	@GetMapping(value = "/all")
	public ModelAndView getAllContactMessages() {
		
		ModelAndView model = new ModelAndView("viewContactMessage");
		model.addObject("contactMessages", contactMessageDao.getContactMessageDetails());
		return model;
		
	}
}
