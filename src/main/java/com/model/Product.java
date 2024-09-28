package com.model;

import java.util.Arrays;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.springframework.beans.factory.annotation.Value;

import com.model.Category;

@Entity
@Table(name="MyProduct")
public class Product {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int productId;
	@Column(unique = true)
	private String productName;
	private String procuctDesc;
	private String productPicName;
	private int productPrice;
	private int productDiscount;
	private int productQuantity;
	@Lob
	private byte[] productImage;
	@ManyToOne
	private Category category;
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
	public String getProcuctDesc() {
		return procuctDesc;
	}
	public void setProcuctDesc(String procuctDesc) {
		this.procuctDesc = procuctDesc;
	}
	public String getProductPicName() {
		return productPicName;
	}
	public void setProductPicName(String productPicName) {
		this.productPicName = productPicName;
	}
	public int getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}
	public int getProductDiscount() {
		return productDiscount;
	}
	public void setProductDiscount(int productDiscount) {
		this.productDiscount = productDiscount;
	}
	public int getProductQuantity() {
		return productQuantity;
	}
	public void setProductQuantity(int productQuantity) {
		this.productQuantity = productQuantity;
	}
	public byte[] getProductImage() {
		return productImage;
	}
	public void setProductImage(byte[] productImage) {
		this.productImage = productImage;
	}
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	@Override
	public String toString() {
		return "Product [productId=" + productId + ", productName=" + productName + ", procuctDesc=" + procuctDesc
				+ ", productPicName=" + productPicName + ", productPrice=" + productPrice + ", productDiscount="
				+ productDiscount + ", productQuantity=" + productQuantity + ", productImage="
				+ Arrays.toString(productImage) + ", category=" + category + "]";
	}
	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Product(int productId, String productName, String procuctDesc, String productPicName, int productPrice,
			int productDiscount, int productQuantity, byte[] productImage, Category category) {
		super();
		this.productId = productId;
		this.productName = productName;
		this.procuctDesc = procuctDesc;
		this.productPicName = productPicName;
		this.productPrice = productPrice;
		this.productDiscount = productDiscount;
		this.productQuantity = productQuantity;
		this.productImage = productImage;
		this.category = category;
	}
	
	//calculate price after discount
	public int getPriceAfterApplyDiscount() {
		int d = (int)((this.getProductDiscount()/100.0)*this.getProductPrice());
		return this.getProductPrice()-d;
	}
	
	
	
}
