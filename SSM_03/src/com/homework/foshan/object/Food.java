package com.homework.foshan.object;

public class Food {
	private int id ;
	private String name ;
	private int business_id ;
	private double price;
	private int limit_num;
	private String fdimg;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getBusiness_id() {
		return business_id;
	}

	public void setBusiness_id(int business_id) {
		this.business_id = business_id;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public int getLimit_num() {
		return limit_num;
	}

	public void setLimit_num(int limit_num) {
		this.limit_num = limit_num;
	}

	public String getFdimg() {
		return fdimg;
	}

	public void setFdimg(String fdimg) {
		this.fdimg = fdimg;
	}

	@Override
	public String toString() {
		return "Food [id=" + id + ", name=" + name + ", business_id="
				+ business_id + ", price=" + price + ", limit_num=" + limit_num
				+ ", fdimg=" + fdimg + "]";
	}
}
