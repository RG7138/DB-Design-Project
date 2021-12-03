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
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name="auctions")
public class Auction{

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="auction_id")
	private int auctionId;
	
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "seller_id", referencedColumnName = "seller_id")
	private Seller seller;
	
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "product_id", referencedColumnName = "product_id")
	private Product product;
	
	@Temporal(TemporalType.DATE)
	@Column(name = "auction_date")
	private Date auctionDate;
	
	@Column(name = "expiration_date")
	private Date expirationDate;

	public int getAuctionId() {
		return auctionId;
	}

	public void setAuctionId(int auctionId) {
		this.auctionId = auctionId;
	}

	public Seller getSeller() {
		return seller;
	}

	public void setSeller(Seller seller) {
		this.seller = seller;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public Date getAuctionDate() {
		return auctionDate;
	}

	public void setAuctionDate(Date auctionDate) {
		this.auctionDate = auctionDate;
	}

	public Date getExpirationDate() {
		return expirationDate;
	}

	public void setExpirationDate(Date expirationDate) {
		this.expirationDate = expirationDate;
	}

	@Override
	public String toString() {
		return "Auction [auctionId=" + auctionId + ", seller=" + seller + ", product=" + product + ", auctionDate="
				+ auctionDate + ", expirationDate=" + expirationDate + "]";
	}

	
}
