package com.auction.OnlineAuction.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.auction.OnlineAuction.model.Product;
import com.auction.OnlineAuction.repository.ProductRepository;

@Service
public class ProductDao {

	@Autowired
	ProductRepository productRepository;
	
	public List<Product> getProductDetails() {
		return productRepository.findAll();
	}
}
