package com.auction.OnlineAuction.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.auction.OnlineAuction.model.Auction;

@Repository
public interface AuctionRepository extends JpaRepository<Auction, Integer>{

}
