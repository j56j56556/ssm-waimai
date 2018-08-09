package com.homework.foshan.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.homework.foshan.object.Business;
import com.homework.foshan.service.Businessservice;
import com.homework.foshan.service.LoginService;
import com.homework.foshan.service.Orderservice;
@Controller
@RequestMapping("/zhuye")
public class Ordersure{
		@Autowired
		private Orderservice orderservice;
		@Autowired
		private LoginService loginservice;
		@Autowired
		private Businessservice businessservice;
		@RequestMapping("/add")
		public void add(HttpServletRequest request,HttpServletResponse response)
		{	
			int id1=1;
			int id2=Integer.parseInt(request.getParameter("food_id"));		
			orderservice.add(id1, id2);
		}
		@RequestMapping("/delete")
		public void deletefood(HttpServletRequest request,HttpServletResponse response)
		{

			int id1=1;
			int id2=Integer.parseInt(request.getParameter("food_id"));		
			orderservice.deletefood(id1, id2);
		}
		public String showbuycar(HttpServletRequest request,HttpServletResponse response)
		{
			
			
			return "success";
		}
		@RequestMapping("/userorder")
		public String showuserorder(HttpServletRequest request,HttpServletResponse response)
		{	
			String s1=(String) request.getSession().getAttribute("userName");
			int id=getLoginservice().getid(s1);
			request.setAttribute("userobject", orderservice.showuserorder(id));
			return "mainfold/myorder";
		}
		@RequestMapping("/busorder")
		public String showbusorder(HttpServletRequest request,HttpServletResponse response)
		{

			String s1=(String) request.getSession().getAttribute("busName");
			int id=businessservice.getbyname(s1).getBid();
			request.setAttribute("busobject", orderservice.showbusorder(id));
			return "mainfold/busorder";
		}
		@RequestMapping("/usercommitorder")
		public String usercommitorder(HttpServletRequest request,HttpServletResponse response)
		{	Business business=new Business();
			business.setBname((String)request.getParameter("business.bname"));
			String s1=(String)request.getSession().getAttribute("userName");
			String flag=request.getParameter("bid");
			int bid=0;
			if(flag==null)
			{	
				bid=businessservice.getbyname(business.getBname()).getBid();

			}
			else
			{
				bid=Integer.parseInt((String)request.getParameter("bid"));
			}
			int id=getLoginservice().getid(s1);
			orderservice.userCommitOrder(id, bid);
			return "redirect:/zhuye/userorder";
		}
		@RequestMapping("/operateorder")
		public String operateorder(HttpServletRequest request,HttpServletResponse response)
		{

			String s1=(String) request.getSession().getAttribute("busName");
			int bid=businessservice.getbyname(s1).getBid();
			int uid=Integer.parseInt((String) request.getParameter("uid"));
			int state=Integer.parseInt((String) request.getParameter("state"));
			int cla=Integer.parseInt((String) request.getParameter("cla"));
			orderservice.busOperateOrder(uid, bid, cla, state);
			return "redirect:/zhuye/busorder";
		}
		
		
		public void setLoginservice(LoginService loginservice) {
			this.loginservice = loginservice;
		}

		public LoginService getLoginservice() {
			return loginservice;
		}
		public void setOrderservice(Orderservice orderservice) {
			this.orderservice = orderservice;
		}

		public Orderservice getOrderservice() {
			return orderservice;
		}
		public void setBusinessservice(Businessservice businessservice) {
			this.businessservice = businessservice;
		}
		public Businessservice getBusinessservice() {
			return businessservice;
		}
}
