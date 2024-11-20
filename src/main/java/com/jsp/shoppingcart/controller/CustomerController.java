package com.jsp.shoppingcart.controller;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.shoppingcart.dao.CustomerDao;
import com.jsp.shoppingcart.dto.Customer;
import com.jsp.shoppingcart.dto.Merchant;

import net.bytebuddy.matcher.StringMatcher.Mode;

@Controller
public class CustomerController {
	@Autowired
	CustomerDao cdao;
	@RequestMapping("/addcustomer")
	public ModelAndView addCustomer() {
		Customer c=new Customer();
		ModelAndView mav=new ModelAndView();
		mav.addObject("customerobj",c);
		mav.setViewName("customerform");
		return mav;
	}
	@RequestMapping("/savecustomer")
	public ModelAndView savecustomer(@ModelAttribute("customerobj") Customer c) {
	 cdao.saveCustomer(c);
	 ModelAndView mav=new ModelAndView();
	 mav.addObject("message","registration completed");
	 mav.setViewName("customermenu");
	 return mav;
	}
	@RequestMapping("/customerloginvalidation")
	public ModelAndView login(ServletRequest req ,HttpSession session) {
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		
		Customer c=cdao.login(email, password);
		
		
		if(c!=null) {
			ModelAndView mav=new ModelAndView();
			mav.addObject("msg","login successfully");
			mav.setViewName("customeroptions");
			session.setAttribute("customerinfo",c);
			
			return mav;
		}
		else {
			ModelAndView mav=new ModelAndView();
			mav.addObject("msg","invalid credentials");
			mav.setViewName("customerloginform");
			return mav;
	}
}
}
