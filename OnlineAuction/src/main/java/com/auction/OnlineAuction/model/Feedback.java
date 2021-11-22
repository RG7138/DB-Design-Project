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
@Table(name="feedback")
public class Feedback{

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="feedback_id")
	private int feedbackId;
	
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "seller_id", referencedColumnName = "seller_id")
	private Seller seller;
	
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "buyer_id", referencedColumnName = "buyer_id")
	private Buyer buyer;
	
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "product_id", referencedColumnName = "product_id")
	private Product product;
	
	@Column(name = "feedback_time")
	private Date feedbackTime;
	
	@Column(name = "rating")
	private int rating;

	@Column(name = "comments")
	private int comments;

	public int getFeedbackId() {
		return feedbackId;
	}

	public void setFeedbackId(int feedbackId) {
		this.feedbackId = feedbackId;
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

	public Date getFeedbackTime() {
		return feedbackTime;
	}

	public void setFeedbackTime(Date feedbackTime) {
		this.feedbackTime = feedbackTime;
	}

	public int getRating() {
		return rating;
	}

	public void setRating(int rating) {
		this.rating = rating;
	}

	public int getComments() {
		return comments;
	}

	public void setComments(int comments) {
		this.comments = comments;
	}

	@Override
	public String toString() {
		return "Feedback [feedbackId=" + feedbackId + ", seller=" + seller + ", buyer=" + buyer + ", product=" + product
				+ ", feedbackTime=" + feedbackTime + ", rating=" + rating + ", comments=" + comments + "]";
	}
	
}
