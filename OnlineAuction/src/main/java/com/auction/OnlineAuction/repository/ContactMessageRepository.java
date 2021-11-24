package com.auction.OnlineAuction.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.auction.OnlineAuction.model.ContactMessage;

@Repository
public interface ContactMessageRepository extends JpaRepository<ContactMessage, Integer>{

}
