package com.homework.foshan.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Service;

import com.homework.foshan.mybatis.BusinessMapper;
import com.homework.foshan.mybatis.FoodMapper;
import com.homework.foshan.object.Food;
import org.junit.Test;
@Service("foodservice")
public class Foodservice {
	@Autowired
	FoodMapper foodMapper;
		public List<Food> show(int i)
		{
			
			return foodMapper.findfoodbybusid(i);
		}
		public void addfood(int bid,String name,Double price,String fdimg)
		{
			Food f=new Food();
			f.setBusiness_id(bid);
			f.setName(name);
			f.setPrice(price);
			f.setFdimg(fdimg);
			f.setLimit_num(0);
			foodMapper.addfood(f);
		}
		public void deletefood(int foodid)
		{

			foodMapper.deletefood(foodid);
		}
		public void updatefood(int fid,int bid,String name,Double price,String fdimg)
		{

			Food f=new Food();
			f.setId(fid);
			f.setBusiness_id(bid);
			f.setName(name);
			f.setPrice(price);
			f.setFdimg(fdimg);
			f.setLimit_num(0);
			foodMapper.updatefood(f);
		}
		@Test
		public void test()
		{

			Food f=new Food();
			f.setId(11);
			f.setBusiness_id(1);
			f.setName("猪杂汤屎");
			f.setPrice(10.00);
			
			f.setLimit_num(0);
			foodMapper.updatefood(f);
			
		}
		
}
