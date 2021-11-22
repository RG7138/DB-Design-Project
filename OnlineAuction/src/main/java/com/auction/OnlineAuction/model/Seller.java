package com.auction.OnlineAuction.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="seller")
public class Seller{
	
	@Id
	@Column(name="seller_id")
	private int sellerId;
	
	@Column(name = "account_Number")
	private String accountNumber;
	
	@Column(name = "routing_Number")
	private String routingNumber;

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

	@Override
	public String toString() {
		return "Seller [sellerId=" + sellerId + ", accountNumber=" + accountNumber + ", routingNumber=" + routingNumber
				+ "]";
	}

}
