package com.auction.OnlineAuction.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.auction.OnlineAuction.dao.AuctionDao;
import com.auction.OnlineAuction.dao.ProductDao;
import com.auction.OnlineAuction.model.Auction;
import com.auction.OnlineAuction.model.Product;

@RestController
@RequestMapping("/product")
public class ProductController {

	@Autowired
	ProductDao productDao;
	
	@Autowired
	AuctionDao auctionDao;
	
	@GetMapping(value = "/all")
	public ModelAndView getAllProducts() {
		
		ModelAndView model = new ModelAndView("viewProduct");
		model.addObject("products", productDao.getProductDetails());
		return model;
		
	}
	
	@GetMapping(value="/product1")
	public ModelAndView getProduct1() {
		return new ModelAndView("product1");
	}
	
	@GetMapping("/productDetails")
	public ModelAndView getProductDetails(@RequestParam("productId") int productId, Model model) {
		Product product = productDao.getProductByProductId(productId);		
		Auction auction = auctionDao.getAuctionByProductId(productId);
		model.addAttribute("auction",auction);
		model.addAttribute("product", product);
		return new ModelAndView("product1");
	}
}
