package com.auction.OnlineAuction.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.auction.OnlineAuction.model.Category;
import com.auction.OnlineAuction.repository.CategoryRepository;

@Service
public class CategoryDao {

	@Autowired
	CategoryRepository categoryRepository;
	
	public List<Category> getCategoryDetails() {
		return categoryRepository.findAll();
	}
	
	public Category getCategoryById(int categoryId) {
		return categoryRepository.findById(categoryId).get();
	}
	
	public Category saveCategory(Category category) {
		return categoryRepository.save(category);
	}
}
