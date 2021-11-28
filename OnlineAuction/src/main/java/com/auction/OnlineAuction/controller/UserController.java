package com.auction.OnlineAuction.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.auction.OnlineAuction.dao.AdminDao;
import com.auction.OnlineAuction.dao.BuyerDao;
import com.auction.OnlineAuction.dao.SellerDao;
import com.auction.OnlineAuction.dao.UserDao;
import com.auction.OnlineAuction.model.Buyer;
import com.auction.OnlineAuction.model.Seller;
import com.auction.OnlineAuction.model.User;

@RestController
@RequestMapping("/user")
public class UserController {

	@Autowired
	UserDao userDao;
	
	@Autowired
	BuyerDao buyerDao;
	
	@Autowired
	SellerDao sellerDao;
	
	@Autowired
	AdminDao adminDao;
	
	/*
	 * @GetMapping(value = "/all") public ModelAndView getAllUsers() {
	 * 
	 * ModelAndView model = new ModelAndView("viewUser"); model.addObject("users",
	 * userDao.getUserDetails()); return model;
	 * 
	 * }
	 */
	
	@GetMapping(value = "/all")
	public ResponseEntity<List<User>> getAllUsers() {
		
		List<User> user =  userDao.getUserDetails();
		return ResponseEntity.ok().body(user);
		
	}
	
	@GetMapping(value = "/home")
	public ModelAndView redirectToHome(HttpSession session) {
		
		User user = (User) session.getAttribute("user");
		return new ModelAndView("index","user",user);
		
	}
	
	@PostMapping(value = "/add")
	public ResponseEntity<User> addUser(@RequestBody User user) {
		
		user.setRole("buyer");
		user.setAdmin(adminDao.getAdminDetails().get(0));
		System.out.println(user.toString());
		User user1 = userDao.addUser(user);
		return ResponseEntity.ok().body(user1);
		
	}
	
	@PostMapping(value = "/login")
	public ModelAndView userLogin(@ModelAttribute("user") User user, HttpSession session ) {
		
		User loggedInUser = userDao.userLogin(user.getEmail(), user.getPassword());
		
		if(loggedInUser==null) {
			return new ModelAndView("login", "user", new User());
		}
		else {
			session.setAttribute("user", loggedInUser);
			return new ModelAndView("index");
		}
		
		
	}
	
	@GetMapping(value = "/viewProfile")
	public ModelAndView viewProfile(HttpSession session) {
		User user = (User)session.getAttribute("user");
		Object data = null;
		if(user.getRole().equals("buyer")) {
			
			data =  buyerDao.getBuyerByUserId(user.getUserId());
			return new ModelAndView("profile","data",(Buyer) data);
			
		}else {
			data = sellerDao.getSellerByUserId(user.getUserId());
			return new ModelAndView("profile","data",(Seller) data);
		}
		
	}
}
