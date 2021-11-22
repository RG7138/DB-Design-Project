package com.auction.OnlineAuction.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.auction.OnlineAuction.dao.ProductDao;

@RestController
@RequestMapping("/product")
public class ProductController {

	@Autowired
	ProductDao productDao;
	
	@GetMapping(value = "/all")
	public ModelAndView getAllProducts() {
		
		ModelAndView model = new ModelAndView("viewProduct");
		model.addObject("products", productDao.getProductDetails());
		return model;
		
	}
}
