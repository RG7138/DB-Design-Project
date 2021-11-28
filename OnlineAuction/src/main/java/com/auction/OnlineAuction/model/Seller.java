package com.auction.OnlineAuction.model;

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
@Table(name="seller")
public class Seller{
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="seller_id")
	private int sellerId;
	
	@Column(name = "account_Number")
	private String accountNumber;
	
	@Column(name = "routing_Number")
	private String routingNumber;
	
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "user_id", referencedColumnName = "user_id")
	private User user;

	public int getSellerId() {
		return sellerId;
	}

	public void setSellerId(int sellerId) {
		this.sellerId = sellerId;
	}

	public String getAccountNumber() {
		return accountNumber;
	}

	public void setAccountNumber(String accountNumber) {
		this.accountNumber = accountNumber;
	}

	public String getRoutingNumber() {
		return routingNumber;
	}

	public void setRoutingNumber(String routingNumber) {
		this.routingNumber = routingNumber;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@Override
	public String toString() {
		return "Seller [sellerId=" + sellerId + ", accountNumber=" + accountNumber + ", routingNumber=" + routingNumber
				+ ", user=" + user + "]";
	}

	
}
