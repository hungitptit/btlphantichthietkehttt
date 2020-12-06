package com.example.demo.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;



@Controller
public class HomeController {
	//@Autowired
	//AccountServiceImp service;

	@RequestMapping(value = { "/home" }, method = RequestMethod.GET)
	public String showHome() {
		return "MainPage";
	}
	
	@RequestMapping(value = { "/gdDangnhap" }, method = RequestMethod.GET)
	public String showLoginView() {
		return "gdDangnhap";
	}
	@RequestMapping(value = { "/doDangnhap" }, method = RequestMethod.POST)
	public String doDangnhap() {
		return "doDangnhap";
	}

//	@RequestMapping(value = { "/home" }, method = RequestMethod.POST)
//	public String login(@RequestParam String email, @RequestParam String pwd, @RequestParam String status,
//			Model model) {
//		Account acc = new Account();
//		acc.setEmail(email);
//		acc.setPassword(pwd);
//		List<Account> list = service.findByEmailAndPassword(email, pwd);
//		if ("login".equals(status)) {
//			if (list.size() == 1) {
//				list = service.getAll();
//				model.addAttribute("accountList", list);
//				return "redirect:/account";
//			}
//
//			else
//				return "MainPage";
//		} else {
//			if (list.size() == 1)
//				return "MainPage";
//			else {
//				service.insert(acc);
//				list = service.getAll();
//				model.addAttribute("accountList", list);
//				return "ListAccount";
//
//			}
//
//		}
//
//	}
}
