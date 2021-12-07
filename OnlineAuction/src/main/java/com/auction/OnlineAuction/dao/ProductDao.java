package com.auction.OnlineAuction.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
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
	
	public Product saveProduct(Product product) {
		return productRepository.save(product);
	}
	
	public List<Product> getRecommendedProduct(PageRequest pageRequest){
		return productRepository.getRecommendedProducts(pageRequest);
	}
	
	public Product getProductByProductId(int productId) {
		return productRepository.findById(productId).get();
	}
	
	public void updateProduct(Product product) {
		Product productToUpdate = getProductByProductId(product.getProductId());
		productToUpdate.setMaxBidPrice(product.getMaxBidPrice());
	}
}
