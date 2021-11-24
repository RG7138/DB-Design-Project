package com.auction.OnlineAuction.model;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="contactmessages")
public class ContactMessage{

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="contactmessages_id")
	private int contactMessagesId;
	
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "seller_id", referencedColumnName = "seller_id")
	private Seller seller;
	
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "buyer_id", referencedColumnName = "buyer_id")
	private Buyer buyer;
	
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "product_id", referencedColumnName = "product_id")
	private Product product;
	
	@Column(name = "message_time")
	private Date messageTime;
	
	@Column(name = "messages")
	private String messages;

	public int getContactMessagesId() {
		return contactMessagesId;
	}

	public void setContactMessagesId(int contactMessagesId) {
		this.contactMessagesId = contactMessagesId;
	}

	public Seller getSeller() {
		return seller;
	}

	public void setSeller(Seller seller) {
		this.seller = seller;
	}

	public Buyer getBuyer() {
		return buyer;
	}

	public void setBuyer(Buyer buyer) {
		this.buyer = buyer;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public Date getMessageTime() {
		return messageTime;
	}

	public void setMessageTime(Date messageTime) {
		this.messageTime = messageTime;
	}

	public String getMessages() {
		return messages;
	}

	public void setMessages(String messages) {
		this.messages = messages;
	}

	@Override
	public String toString() {
		return "ContactMessage [contactmessagesId=" + contactMessagesId + ", seller=" + seller + ", buyer=" + buyer
				+ ", product=" + product + ", messageTime=" + messageTime + ", messages=" + messages + "]";
	}

}
