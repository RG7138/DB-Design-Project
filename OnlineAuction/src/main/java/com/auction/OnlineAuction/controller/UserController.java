package com.auction.OnlineAuction.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.lang.NonNull;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.auction.OnlineAuction.dao.AdminDao;
import com.auction.OnlineAuction.dao.UserDao;
import com.auction.OnlineAuction.model.User;

@RestController
@RequestMapping("/user")
public class UserController {

	@Autowired
	UserDao userDao;
	
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
			session.setAttribute("role", loggedInUser.getRole());
			return new ModelAndView("index");
		}
		
		
	}
}
