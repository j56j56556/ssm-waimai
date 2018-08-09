package com.homework.foshan.service;



import java.util.Date;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.homework.foshan.mybatis.*;
import com.homework.foshan.object.*;



public class Test {
	public static void main(String[] args)
	{
		ApplicationContext ac = new ClassPathXmlApplicationContext("ApplicationContext.xml");
		OrderMapper mapper = ac.getBean(OrderMapper.class);
		Order order = new Order();
		Order o1=null;
		order.setGoods_id(1);
		order.setCustomer_id(1);
		order.setState(1);
		o1=mapper.findbydoubleid(order);
		if(o1==null)
		{	
		order.setOrder_time(new Date());		
		order.setNumber(1);	
		mapper.addorder(order);
		}
		else
		{
			o1.setNumber(o1.getNumber()+1);
			mapper.updatenum(o1);
		}
		
//		for(Food food:mapper.findfoodbybusid(1))
//		{
//			System.out.println(food.getName());
//		}
		//System.out.println(mapper.findfoodbybusid(id).getName());
	}
}
