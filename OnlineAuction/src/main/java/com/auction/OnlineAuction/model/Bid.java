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
@Table(name="bids")
public class Bid{

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="bids_id")
	private int bidsId;
	
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "buyer_id", referencedColumnName = "buyer_id")
	private Buyer buyer;
	
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "product_id", referencedColumnName = "product_id")
	private Product product;
	
	@Column(name = "bid_time")
	private Date bidTime;
	
	@Column(name = "bid_price")
	private int bidPrice;

	public int getBidsId() {
		return bidsId;
	}

	public void setBidsId(int bidsId) {
		this.bidsId = bidsId;
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

	public Date getBidTime() {
		return bidTime;
	}

	public void setBidTime(Date bidTime) {
		this.bidTime = bidTime;
	}

	public int getBidPrice() {
		return bidPrice;
	}

	public void setBidPrice(int bidPrice) {
		this.bidPrice = bidPrice;
	}

	@Override
	public String toString() {
		return "Bid [bidsId=" + bidsId + ", buyer=" + buyer + ", product=" + product + ", bidTime=" + bidTime
				+ ", bidPrice=" + bidPrice + "]";
	}

	
}
