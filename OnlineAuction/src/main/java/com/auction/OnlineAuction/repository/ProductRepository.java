package com.auction.OnlineAuction.repository;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.auction.OnlineAuction.model.Product;

@Repository
public interface ProductRepository extends JpaRepository<Product, Integer>{

	
	@Query("Select p from Product p order by p.maxBidPrice desc")
	public List<Product> getRecommendedProducts(Pageable pageable);
}
