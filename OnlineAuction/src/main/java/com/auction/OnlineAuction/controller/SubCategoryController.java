package com.auction.OnlineAuction.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.auction.OnlineAuction.dao.SubCategoryDao;
import com.auction.OnlineAuction.model.SubCategory;

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
	
	@GetMapping(value = "/getSubCategory")
	public List<SubCategory> getAllSubCategoriesByCategoryId(@RequestParam("categoryid") int categoryId) {
		
		System.out.println(categoryId);
		
		List<SubCategory> subCategoryList = subCategoryDao.getSubCategoryByCategoryId(categoryId);
		
		System.out.println(subCategoryList);
		return subCategoryList;
		
	}
}
