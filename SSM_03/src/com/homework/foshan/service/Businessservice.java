package com.homework.foshan.service;

import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Service;


import com.homework.foshan.mybatis.BusinessMapper;
import com.homework.foshan.object.Business;
import com.homework.foshan.object.QueryLimitPage;
import org.junit.Test;
@Service("businessservice")
public class Businessservice {
	@Autowired()
	BusinessMapper businessMapper;
	public List<Business> show()
	{	

	return businessMapper.findBusinessall();
	}
	public Business getbyid(int i)
	{
		return businessMapper.findBusinessbyid(i);
	}
	
	public Business getbyname(String s)
	{
		return businessMapper.findBusinessbyName(s);
	}
	public List<Business> limitshow(int id)
	{

		QueryLimitPage p1=new QueryLimitPage();
		p1.setLine(id);
		p1.setLinenum(4);
		p1.compute();
		return businessMapper.findLimitBusiness(p1);
	}
	@Test
	public void test()
	{
		System.out.println(getbyname("回家吃饭"));
	}
}
