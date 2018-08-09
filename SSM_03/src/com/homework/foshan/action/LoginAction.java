package com.homework.foshan.action;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import com.homework.foshan.object.User;
import com.homework.foshan.service.Businessservice;
import com.homework.foshan.service.LoginService;

@Controller
@RequestMapping("/zhuye")
public class LoginAction {
	@Autowired
	private LoginService loginservice;
	@RequestMapping("/login")
		public @ResponseBody String checklogin(HttpServletRequest request,HttpServletResponse response) throws UnsupportedEncodingException
		{	
			
			String m1 = (String) request.getParameter("member");
			String p1 = (String) request.getParameter("password");
			String kind1 = (String) request.getParameter("kind");
			System.out.println(m1+p1+kind1);
		//	setStreamActionResult(new ByteArrayInputStream("empty".getBytes("UTF-8")));
			int i;

			if(kind1.equals("2"))
			{
			i=loginservice.checkbus(m1, p1);	
			}
			else
			i=loginservice.checkuser(m1,p1);
			System.out.println("终于成功啦！"+m1+p1);
			if(m1==null)
			{
				System.out.println("空");

			}
		
			if(i==1)
			{	
		//		setStreamActionResult(new ByteArrayInputStream("success".getBytes("UTF-8")));
				if(kind1.equals("2"))
				{
				request.getSession().setAttribute("busName", m1);
				
				}
				else
				{
				request.getSession().setAttribute("userName", m1);
				System.out.println(request.getSession().getAttribute("userName"));
				}
				return "success";
			}
			else if(i==-1)
			{	
				request.setAttribute("mes","用户名字不存在");
				return "error1";
			}
			else
			{	System.out.println("0");
				request.setAttribute("mes","密码出错");
				request.setAttribute("name", m1);
				return "error2";
			}
			
		}
	@RequestMapping("/register")
		public String register(HttpServletRequest request,HttpServletResponse response)
		{
			String m1 = (String) request.getParameter("member");
			String p1 = (String) request.getParameter("password");
			User user=new User();
			user.setUsername(m1);
			user.setUserpassword(p1);
			loginservice.register(user);
			return "denglu";
		}
	@RequestMapping("/checkmember")
		public @ResponseBody String checkrepeat(HttpServletRequest request,HttpServletResponse response) throws UnsupportedEncodingException
		{
			String m1 = (String) request.getParameter("member");
			System.out.println(m1);
			int i=loginservice.checkrepeat(m1);
			if(i==1)
			return "1";
			else
			return "0";
			
		}
	@RequestMapping("/usermessage")
		public String usermessage(HttpServletRequest request,HttpServletResponse response)
		{	
			String name=(String) request.getSession().getAttribute("userName");
			
			request.setAttribute("usermessage",loginservice.getuserbyname(name));
			return "mainfold/mymessage";
		}
		public void setLoginservice(LoginService loginservice) {
			this.loginservice = loginservice;
		}
		public LoginService getLoginservice() {
			return loginservice;
		}
}
