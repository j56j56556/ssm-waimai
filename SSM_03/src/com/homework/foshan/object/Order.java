package com.homework.foshan.object;
import java.util.Date;
public class Order {
	private int id ;//订单号
	private Date  order_time ;//订单时间
	private int  customer_id ;//顾客id
	private int  goods_id ;//食物id
	private int  number ;//数量
	private double  total_cost ;//金钱总额
	private int  state ;//描述
	private int  classify;//分类
	private String assess;//评论
	private String foodname;//食物名称
	private String businessname;//商家名称
	private String username;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getAssess() {
		return assess;
	}
	public void setAssess(String assess) {
		this.assess = assess;
	}
	public int getClassify() {
		return classify;
	}
	public void setlassify(int classify) {
		this.classify = classify;
	}
	public Date getOrder_time() {
		return order_time;
	}
	public void setOrder_time(Date order_time) {
		this.order_time = order_time;
	}
	public int getCustomer_id() {
		return customer_id;
	}
	public void setCustomer_id(int customer_id) {
		this.customer_id = customer_id;
	}
	public int getGoods_id() {
		return goods_id;
	}
	public void setGoods_id(int goods_id) {
		this.goods_id = goods_id;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public double getTotal_cost() {
		return total_cost;
	}
	public void setTotal_cost(double total_cost) {
		this.total_cost = total_cost;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public void setFoodname(String foodname) {
		this.foodname = foodname;
	}
	public String getFoodname() {
		return foodname;
	}
	public void setBusinessname(String businessname) {
		this.businessname = businessname;
	}
	public String getBusinessname() {
		return businessname;
	}
	@Override
	public String toString() {
		return "Order [id=" + id + ", order_time=" + order_time
				+ ", customer_id=" + customer_id + ", goods_id=" + goods_id
				+ ", number=" + number + ", total_cost=" + total_cost
				+ ", state=" + state + ", classify=" + classify + ", assess="
				+ assess + ", foodname=" + foodname + ", businessname="
				+ businessname + "]";
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getUsername() {
		return username;
	}
	
}