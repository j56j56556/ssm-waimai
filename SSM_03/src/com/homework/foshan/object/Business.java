package com.homework.foshan.object;

import java.util.List;

public class Business {
	private int     bid ;
	private String  passwd ;
	private String  bname ;
	private double  turnover ;
	private String  phone ;
	private String  address ;
	private String  bsimg;
	private List<OrdersInt> ordersint;
	private List<User> users;
	public void setBid(int bid) {
		this.bid = bid;
	}
	public int getBid() {
		return bid;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setBname(String bname) {
		this.bname = bname;
	}
	public String getBname() {
		return bname;
	}
	public void setTurnover(double turnover) {
		this.turnover = turnover;
	}
	public double getTurnover() {
		return turnover;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getPhone() {
		return phone;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getAddress() {
		return address;
	}
	public void setOrdersint(List<OrdersInt> ordersint) {
		this.ordersint = ordersint;
	}
	public List<OrdersInt> getOrdersint() {
		return ordersint;
	}
	public void setBsimg(String bsimg) {
		this.bsimg = bsimg;
	}
	public String getBsimg() {
		return bsimg;
	}
	@Override
	public String toString() {
		return "Business [bid=" + bid + ", passwd=" + passwd + ", bname="
				+ bname + ", turnover=" + turnover + ", phone=" + phone
				+ ", address=" + address + ", bsimg=" + bsimg + ", ordersint="
				+ ordersint + "]";
	}
	public void countall()
	{
		for(OrdersInt o:ordersint)
		{
			o.countall();
		}
	}
	public void usercountall()
	{
		for(User u:users)
		{
			u.usercountall();
		}
	}
	public void setUsers(List<User> users) {
		this.users = users;
	}
	public List<User> getUsers() {
		return users;
	}
}
