package com.auction.OnlineAuction.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.auction.OnlineAuction.dao.SubCategoryDao;

@RestController
@RequestMapping("/subCategory")
public class SubCategoryController {

	@Autowired
	SubCategoryDao subCategoryDao;
	
	@GetMapping(value = "/all")
	public ModelAndView getAllSubCategories() {
		
		ModelAndView model = new ModelAndView("viewSubCategory");
		model.addObject("subCategories", subCategoryDao.getSubCategoryDetails());
		return model;
		
	}
}
