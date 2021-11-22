package com.auction.OnlineAuction.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.auction.OnlineAuction.model.Product;

@Repository
public interface ProductRepository extends JpaRepository<Product, Integer>{

}
