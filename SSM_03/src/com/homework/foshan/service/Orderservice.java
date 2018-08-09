package com.homework.foshan.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Service;
import org.junit.Test;

import com.homework.foshan.mybatis.FoodMapper;
import com.homework.foshan.mybatis.OrderMapper;
import com.homework.foshan.object.Business;
import com.homework.foshan.object.Order;
import com.homework.foshan.object.OrdersInt;
import com.homework.foshan.object.Query1;
import com.homework.foshan.object.User;
@Service("orderservice")
public class Orderservice {
	@Autowired
	OrderMapper orderMapper;
	@Autowired
	FoodMapper foodMapper;
		public void add(int id,int id1)
		{
			Order order = new Order();
			Order o1=null;
			order.setGoods_id(id1);
			order.setCustomer_id(id);
			order.setState(0);
			order.setlassify(0);
			o1=orderMapper.findbydoubleid(order);
			if(o1==null)
			{	
			order.setOrder_time(new Date());		
			order.setNumber(1);	
			orderMapper.addorder(order);
			}
			else
			{
				o1.setNumber(o1.getNumber()+1);
				orderMapper.updatenum(o1);
			}
		}
		public void deletefood(int id,int id1)
		{
			Order order = new Order();
			Order o1=null;
			order.setGoods_id(id1);
			order.setCustomer_id(id);
			order.setState(0);
			o1=orderMapper.findbydoubleid(order);
			if(o1.getNumber()==1)
			{	

				orderMapper.deleteorder(order);
			}
			else
			{
				o1.setNumber(o1.getNumber()-1);
				orderMapper.updatenum(o1);
			}
		}
		public List<Order> showbuycar(int userid,int busid)
		{

	
			Query1 q1=new Query1();
			q1.setUserid(userid);
			q1.setState(0);
			List<Integer> l1=foodMapper.findfoodidbybusid(busid);
			q1.setFoodsid(l1);
			return orderMapper.findbyuserid(q1);		
		}
		public List<OrdersInt> showuserorder(int userid)
		{
	
			List<User> l1=orderMapper.findUserOrderMessage(userid);
			List<OrdersInt> os1=new ArrayList<OrdersInt>();
			l1.get(0).countall();
			
			for(Business b:l1.get(0).getBusinesses())
			{
				os1.addAll(b.getOrdersint());
			}
			return os1;
			
		}
		public List<OrdersInt> showbusorder(int bid)
		{
	
			List<Business> l1=orderMapper.findBusOrderMessage(bid);
			List<OrdersInt> os1=new ArrayList<OrdersInt>();
			
			l1.get(0).usercountall();
			for(User u:l1.get(0).getUsers())
			{
				os1.addAll(u.getOrdersint());
			}
			return os1;
			
		}

		public void userCommitOrder(int userid,int bid)
		{

			Query1 q1=new Query1();
			q1.setUserid(userid);
			q1.setClassify(0);
			q1.setState(1);
			List<Integer> l1=foodMapper.findfoodidbybusid(bid);
			q1.setFoodsid(l1);
			q1.setNewclassify(orderMapper.findusemaxclassify(q1)+1);
			orderMapper.userCommitOrder(q1);

		}

		public void busOperateOrder(int userid,int bid,int classify,int state)
		{
	
	
			Query1 q1=new Query1();
			q1.setUserid(userid);
			q1.setClassify(classify);
			q1.setState(state);
			List<Integer> l1=foodMapper.findfoodidbybusid(bid);
			q1.setFoodsid(l1);
			orderMapper.busOperateOrder(q1);
		}
		@Test
		public void test()
		{
			userCommitOrder(1,1);
	//		System.out.println(showbuycar(1,1).get(0).getFoodname());
		}
}
