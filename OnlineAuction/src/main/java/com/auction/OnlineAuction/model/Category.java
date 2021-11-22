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
@Table(name="category")
public class Category {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="category_id")
	private int categoryId;
	
	@Column(name = "category_name")
	private String categoryName;

	
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "created_by", referencedColumnName = "admin_id")
	private Admin admin;


	public int getCategoryId() {
		return categoryId;
	}


	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}


	public String getCategoryName() {
		return categoryName;
	}


	public void setCategorName(String categoryName) {
		this.categoryName = categoryName;
	}


	public Admin getAdmin() {
		return admin;
	}


	public void setAdmin(Admin admin) {
		this.admin = admin;
	}


	@Override
	public String toString() {
		return "Category [categoryId=" + categoryId + ", categorName=" + categoryName + ", admin=" + admin + "]";
	}

	
}
