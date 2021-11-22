package com.auction.OnlineAuction.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.auction.OnlineAuction.model.SubCategory;
import com.auction.OnlineAuction.repository.SubCategoryRepository;

@Service
public class SubCategoryDao {

	@Autowired
	SubCategoryRepository subCategoryRepository;
	
	public List<SubCategory> getSubCategoryDetails() {
		return subCategoryRepository.findAll();
	}
}
