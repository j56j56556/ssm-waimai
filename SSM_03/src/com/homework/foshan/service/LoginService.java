package com.homework.foshan.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Service;

import com.homework.foshan.mybatis.FoodMapper;
import com.homework.foshan.mybatis.UserMapper;
import com.homework.foshan.object.Business;
import com.homework.foshan.object.User;
@Service("loginservice")
public class LoginService {
	@Autowired
	UserMapper userMapper;
	private String exist;

	public void setExist(String exist) {
		this.exist = exist;
	}

	public String getExist() {
		return exist;
	}
	public int checkuser(String name,String password)
	{

		User user = userMapper.findUserByName(name);
		if(user==null)
		{
			return -1;
		}
		if(user.getUserpassword().equals(password))	
		{
		return 1;
		}
		else
		{
		return 0;
		}
	}
	
	public int checkbus(String name,String password)
	{

		Business business = userMapper.findBusByName(name);
		if(business==null)
		{
			return -1;
		}
		if(business.getPasswd().equals(password))	
		{
		return 1;
		}
		else
		{
		return 0;
		}
	}
	public void register(User user)
	{

		userMapper.addUser(user);
	}
	public int checkrepeat(String name)
	{

		User user = userMapper.findUserByName(name);
		if(user!=null)
		   return 0;
		else 
		   return 1;
	}
	public int getid(String name)
	{
		return userMapper.findUserByName(name).getUserid();
	}
	public User getuserbyname(String name)
	{
		return userMapper.findUserByName(name);
	}
}
