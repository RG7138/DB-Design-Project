package com.auction.OnlineAuction.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="buyer")
public class Buyer{
	
	@Id
	@Column(name="buyer_id")
	private int buyerId;
	
	@Column(name = "shipping_address")
	private String shippingAddress;

	public int getBuyerId() {
		return buyerId;
	}

	public void setBuyerId(int buyerId) {
		this.buyerId = buyerId;
	}

	public String getShippingAddress() {
		return shippingAddress;
	}

	public void setShippingAddress(String shippingAddress) {
		this.shippingAddress = shippingAddress;
	}

	@Override
	public String toString() {
		return "Buyer [buyerId=" + buyerId + ", shippingAddress=" + shippingAddress + "]";
	}

}
