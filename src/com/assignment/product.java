package com.assignment;



public class product implements Comparable<product>{

	private int  productId;
	private String productName;
	private String productDescription;
	private String relateditems;

	public product(int  productId, String productName, String productDescription, String relateditems) {
		this.productId = productId;
		this.productName = productName;
		this.productDescription = productDescription;
		this.relateditems = relateditems;
	
	}
	@Override
	public String toString() {
		return "product [productId=" + productId + ", productName=" + productName + ", productDescription="
				+ productDescription + ", relateditems=" + relateditems+ "]";
	}
	public int  getProductId() {
		return productId;
	}
	public void setProductId(int  productId) {
		this.productId = productId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getProductDescription() {
		return productDescription;
	}
	public void setProductDescription(String productDescription) {
		this.productDescription = productDescription;
	}
	public String getRelateditems() {
		return relateditems;
	}
	public void setRelateditems(String relateditems) {
		this.relateditems = relateditems;
	}
	
	
	
	@Override
	public int compareTo(product arg0) {
		int a=arg0.getProductId();
		int b=this.getProductId();
		return (b-a);
		
	}
	
}
