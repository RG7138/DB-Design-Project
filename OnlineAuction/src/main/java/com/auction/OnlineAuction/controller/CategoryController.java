package com.auction.OnlineAuction.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.auction.OnlineAuction.dao.CategoryDao;

@RestController
@RequestMapping("/category")
public class CategoryController {

	@Autowired
	CategoryDao categoryDao;
	
	@GetMapping(value = "/all")
	public ModelAndView getAllCategories() {
		
		ModelAndView model = new ModelAndView("viewCategory");
		model.addObject("categories", categoryDao.getCategoryDetails());
		return model;
		
	}
}
