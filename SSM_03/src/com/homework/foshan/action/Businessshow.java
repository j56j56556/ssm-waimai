package com.homework.foshan.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;



import com.homework.foshan.service.Businessservice;
import com.homework.foshan.service.LoginService;

@Controller
@RequestMapping("/zhuye")
public class Businessshow {
	@Autowired
	private Businessservice businessservice;

	public void setBusinessservice(Businessservice businessservice) {
		this.businessservice = businessservice;
	}

	public Businessservice getBusinessservice() {
		return businessservice;
	}
	@RequestMapping("/businessshow")
	public String show(HttpServletRequest request,HttpServletResponse response)
	{
		request.setAttribute("home",businessservice.show());
		
		return "mainfold/shangjia";
	}
	@RequestMapping("/fenshow")
	public String showline(HttpServletRequest request,HttpServletResponse response)
	{
		int line=Integer.parseInt(request.getParameter("line"));
		request.setAttribute("home",businessservice.limitshow(line));		
		return "mainfold/shangjialine";
	}
	public String buycar(HttpServletRequest request,HttpServletResponse response)
	{		
		String s1=(String) request.getSession().getAttribute("userName");

			return "success";
	}
	@RequestMapping("/busmessage")
	public String businessmessage(HttpServletRequest request,HttpServletResponse response)
	{
		String s1=(String)request.getSession().getAttribute("busName");
		request.setAttribute("busmessage", businessservice.getbyname(s1));
		return "mainfold/businessmessage";
	}


		
}
