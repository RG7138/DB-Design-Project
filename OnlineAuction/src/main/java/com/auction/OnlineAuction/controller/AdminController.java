package com.auction.OnlineAuction.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.auction.OnlineAuction.dao.AdminDao;

@RestController
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	AdminDao adminDao;
	
	@GetMapping(value = "/all")
	public ModelAndView getAllAdmins() {
		
		ModelAndView model = new ModelAndView("viewAdmin");
		model.addObject("admins", adminDao.getAdminDetails());
		return model;
		
	}
}
