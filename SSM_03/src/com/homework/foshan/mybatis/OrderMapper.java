package com.homework.foshan.mybatis;

import java.util.List;

import com.homework.foshan.object.*;

public interface OrderMapper {
	public void addorder(Order order);
	public void deleteorder(Order order);
	public Order findbydoubleid(Order order);
	public List<User> findUserOrderMessage(int userid);
	public List<Order> findbyuserid(Query1 query1);
	public void userCommitOrder(Query1 q1);
	public int findusemaxclassify(Query1 q1);
	public int busOperateOrder(Query1 q1);
	public List<Business> findBusOrderMessage(int bid);
	public void updatenum(Order order);
	public void updatestate(Order order);
}
