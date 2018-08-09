package com.homework.foshan.object;

import java.util.List;

public class OrdersInt {
	private List<Order> order;
	private int cishu;
	private double allitemcost=0;
	public void setOrder(List<Order> order) {
		this.order = order;
	}
	public List<Order> getOrder() {
		return order;
	}
	public void setCishu(int cishu) {
		this.cishu = cishu;
	}
	public int getCishu() {
		return cishu;
	}


	@Override
	public String toString() {
		return "OrdersInt [order=" + order + ", cishu=" + cishu
				+ ", allitemcost=" + allitemcost + "]";
	}
	public void countall()
	{
		
		for(Order o:order)	
		{
			setAllitemcost(getAllitemcost()+o.getTotal_cost());
		}
	}
	public void setAllitemcost(double allitemcost) {
		this.allitemcost = allitemcost;
	}
	public double getAllitemcost() {
		return allitemcost;
	}
}
