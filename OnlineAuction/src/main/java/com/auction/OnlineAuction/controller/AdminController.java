package com.auction.OnlineAuction.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.auction.OnlineAuction.dao.AdminDao;
import com.auction.OnlineAuction.dao.UserDao;
import com.auction.OnlineAuction.model.Admin;
import com.auction.OnlineAuction.model.User;

@RestController
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	AdminDao adminDao;
	
	@Autowired
	UserDao userDao;
	
	@GetMapping(value = "/all")
	public ModelAndView getAllAdmins() {
		
		ModelAndView model = new ModelAndView("viewAdmin");
		// admins -> List of all admins
		model.addObject("admins", adminDao.getAdminDetails());
		return model;
		
	}
	
	@GetMapping(value = "")
	public ModelAndView loadLogin() {
		
		return new ModelAndView("adminLogin","admin", new Admin());
		
	}
	
	@PostMapping(value = "/login")
	public ModelAndView adminLogin(@ModelAttribute("admin") Admin admin, HttpSession session) {
		Admin loggedInAdmin = adminDao.getAdminByEmailAndPassword(admin);
		List<User> users = userDao.getUserDetails();
		if(loggedInAdmin == null) {
			return new ModelAndView("adminLogin","admin", new Admin());
		}
		else {
			session.setAttribute("admin", loggedInAdmin);
			return new ModelAndView("dashboard","users",users);
		}
		
		
	}
}
