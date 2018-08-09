package com.homework.foshan.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;



import com.homework.foshan.object.Food;
import com.homework.foshan.object.SprmvcFood;
import com.homework.foshan.service.Businessservice;
import com.homework.foshan.service.Foodservice;
import com.homework.foshan.service.LoginService;
import com.homework.foshan.service.Orderservice;

@Controller
@RequestMapping("/zhuye")
public class Foodshow{
		@Autowired
		private Foodservice foodservice;
		@Autowired
		private Orderservice orderservice;
		@Autowired
		private Businessservice businessservice;
		@Autowired
		private LoginService loginservice;
		@RequestMapping("/foodshow")
		public String show(HttpServletRequest request,HttpServletResponse response)
		{
			
			String s1=(String) request.getSession().getAttribute("userName");
			int id=loginservice.getid(s1);
 			int i=Integer.parseInt(request.getParameter("businessID"));
			request.setAttribute("business", businessservice.getbyid(i));
			request.setAttribute("businessInter",foodservice.show(i));
			request.setAttribute("buycar", orderservice.showbuycar(id, i));
			
			return "mainfold/shangpinzhanshi";
		}
		@RequestMapping("/busmenushow")
		public String busmenushow(HttpServletRequest request,HttpServletResponse response)
		{

			String s1=(String) request.getSession().getAttribute("busName");
			int bid=businessservice.getbyname(s1).getBid();
			request.setAttribute("businessmenu", foodservice.show(bid));
			return "mainfold/houtaimenu";
		}
		@RequestMapping("/addfood")
		public String addfood(HttpServletRequest request,SprmvcFood spr2)
		{
			Food food=spr2.getFood();
			String s1=(String) request.getSession().getAttribute("busName");
			int bid=businessservice.getbyname(s1).getBid();
			foodservice.addfood(bid, food.getName(), food.getPrice(), food.getFdimg());
			return "redirect:/zhuye/busmenushow";
		}
		@RequestMapping("/deletefood")
		public String deletefood(SprmvcFood spr1)
		{
			Food food=spr1.getFood();
			foodservice.deletefood(food.getId());
			return "redirect:/zhuye/busmenushow";
		}
		@RequestMapping("/updatefood")
		public String updatefood(SprmvcFood spr1,HttpServletRequest request,HttpServletResponse response)
		{
			Food food=spr1.getFood();
			food.setId(Integer.parseInt(request.getParameter("fid")));
			String s1=(String)request.getSession().getAttribute("busName");
			int bid=businessservice.getbyname(s1).getBid();
			foodservice.updatefood(food.getId(), bid, food.getName(), food.getPrice(), food.getFdimg());
			return "redirect:/zhuye/busmenushow";
		}
		public void setFoodservice(Foodservice foodservice) {
			this.foodservice = foodservice;
		}
		public Foodservice getFoodservice() {
			return foodservice;
		}
		public void setBusinessservice(Businessservice businessservice) {
			this.businessservice = businessservice;
		}
		public Businessservice getBusinessservice() {
			return businessservice;
		}
		public void setOrderservice(Orderservice orderservice) {
			this.orderservice = orderservice;
		}
		public Orderservice getOrderservice() {
			return orderservice;
		}
		public void setLoginservice(LoginService loginservice) {
			this.loginservice = loginservice;
		}
		public LoginService getLoginservice() {
			return loginservice;
		}
}
