package com.auction.OnlineAuction.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.auction.OnlineAuction.model.SubCategory;

@Repository
public interface SubCategoryRepository extends JpaRepository<SubCategory, Integer>{

	
	@Query("Select s from SubCategory s where s.category.categoryId = :categoryId")
	List<SubCategory> getSubCategoryByCategoryId(@Param("categoryId") int categoryId);

}
