package com.homework.foshan.object;

import java.util.ArrayList;
import java.util.List;

public class User {
	private String username;
	private String userpassword;
	private int userid;
	private List<Business> businesses;
	private List<OrdersInt> ordersint;
	public void setUsername(String username) {
		this.username = username;
	}
	public String getUsername() {
		return username;
	}
	public void setUserpassword(String userpassword) {
		this.userpassword = userpassword;
	}
	public String getUserpassword() {
		return userpassword;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public int getUserid() {
		return userid;
	}
	public void setBusinesses(List<Business> businesses) {
		this.businesses = businesses;
	}
	public List<Business> getBusinesses() {
		return businesses;
	}
	
	@Override
	public String toString() {
		return "User [username=" + username + ", userpassword=" + userpassword
				+ ", userid=" + userid + ", businesses=" + businesses
				+ ", ordersint=" + ordersint + "]";
	}
	public void countall()
	{
		for(Business b:businesses)
		{
			b.countall();
		}
	}
	
	public void usercountall()
	{
		for(OrdersInt o:ordersint)
		{
			o.countall();
		}
	}
	public void setOrdersint(List<OrdersInt> ordersint) {
		this.ordersint = ordersint;
	}
	public List<OrdersInt> getOrdersint() {
		return ordersint;
	}
}
