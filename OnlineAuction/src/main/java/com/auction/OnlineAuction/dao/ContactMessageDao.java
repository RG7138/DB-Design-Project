package com.auction.OnlineAuction.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.auction.OnlineAuction.model.ContactMessage;
import com.auction.OnlineAuction.repository.ContactMessageRepository;

@Service
public class ContactMessageDao {

	@Autowired
	ContactMessageRepository contactMessageRepository;
	
	public List<ContactMessage> getContactMessageDetails() {
		return contactMessageRepository.findAll();
	}
}
