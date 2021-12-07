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
@Table(name="product")
public class Product {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="product_id")
	private int productId;
	
	@Column(name = "product_name")
	private String productName;

	@Column(name = "product_info")
	private String productInfo;
	
	@Column(name = "initial_bid_price")
	private int initialBidPrice;

	@Column(name = "max_bid_price")
	private int maxBidPrice;
	
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "sub_category_id", referencedColumnName = "sub_category_id")
	private SubCategory subCategory;

	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "managed_by", referencedColumnName = "admin_id")
	private Admin admin;
	
	@Column(name="image_path")
	private String imagePath;

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getProductInfo() {
		return productInfo;
	}

	public void setProductInfo(String productInfo) {
		this.productInfo = productInfo;
	}

	public int getInitialBidPrice() {
		return initialBidPrice;
	}

	public void setInitialBidPrice(int initialBidPrice) {
		this.initialBidPrice = initialBidPrice;
	}

	public int getMaxBidPrice() {
		return maxBidPrice;
	}

	public void setMaxBidPrice(int maxBidPrice) {
		this.maxBidPrice = maxBidPrice;
	}

	public SubCategory getSubCategory() {
		return subCategory;
	}

	public void setSubCategory(SubCategory subCategory) {
		this.subCategory = subCategory;
	}

	public Admin getAdmin() {
		return admin;
	}

	public void setAdmin(Admin admin) {
		this.admin = admin;
	}
	

	public String getImagePath() {
		return imagePath;
	}

	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}

	@Override
	public String toString() {
		return "Product [productId=" + productId + ", productName=" + productName + ", productInfo=" + productInfo
				+ ", initialBidPrice=" + initialBidPrice + ", maxBidPrice=" + maxBidPrice + ", subCategory="
				+ subCategory + ", admin=" + admin + ", imagePath=" + imagePath + "]";
	}

	

}
