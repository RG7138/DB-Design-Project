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
import com.auction.OnlineAuction.dao.FeedbackDao;
import com.auction.OnlineAuction.dao.ProductDao;
import com.auction.OnlineAuction.dao.UserDao;
import com.auction.OnlineAuction.model.Admin;
import com.auction.OnlineAuction.model.Feedback;
import com.auction.OnlineAuction.model.Product;
import com.auction.OnlineAuction.model.User;

@RestController
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	AdminDao adminDao;
	
	@Autowired
	UserDao userDao;
	
	@Autowired
	FeedbackDao feedbackDao;
	
	@Autowired
	ProductDao productDao;
	
	
	/*
	 * @GetMapping(value = "/all") public ModelAndView getAllAdmins() {
	 * 
	 * ModelAndView model = new ModelAndView("viewAdmin"); // admins -> List of all
	 * admins model.addObject("admins", adminDao.getAdminDetails()); return model;
	 * 
	 * }
	 */
	
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
	
	@GetMapping(value = "/users")
	public ModelAndView loadUsers() {
		
		List<User> users = userDao.getUserDetails();
		return new ModelAndView("dashboard","users",users);
		
	}
	
	@GetMapping(value = "/products")
	public ModelAndView loadProducts() {
		
		List<Product> productList = productDao.getProductDetails();
		return new ModelAndView("adminProducts","products",productList);
		
	}
	
	@GetMapping(value = "/feedbacks")
	public ModelAndView loadFeedbacks() {
		
		List<Feedback> feedbacks = feedbackDao.getFeedbackDetails();
		return new ModelAndView("adminFeedbacks","feedbacks", feedbacks);
		
	}
	
	@GetMapping(value = "/logout")
	public ModelAndView logout(HttpSession session) {
		
		session.invalidate();
		return new ModelAndView("adminLogin","admin", new Admin());
		
	}
}
