package com.auction.OnlineAuction.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.auction.OnlineAuction.model.Seller;

@Repository
public interface SellerRepository extends JpaRepository<Seller, Integer>{

}
