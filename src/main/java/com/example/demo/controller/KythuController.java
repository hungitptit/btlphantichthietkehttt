package com.example.demo.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class KythuController {
	@RequestMapping(value = { "/gdThemkythu" }, method = RequestMethod.GET)
	public String showAddPlayerView(Map<String, Object> model) {
		return "kt/gdThemkythu";
	}
	@RequestMapping(value = { "/gdSuaXoakythu" }, method = RequestMethod.GET)
	public String showEditAndDeletePlayerView() {
		return "kt/gdSuaXoakythu";
	}
	@RequestMapping(value = { "/doTimkiem" }, method = RequestMethod.POST)
	public String doTimkiemKythu() {
		return "kt/doTimkiem";
	}
	@RequestMapping(value = { "/formkythu" }, method = RequestMethod.GET)
	public String updateKythu() {
		return "kt/formkythu";
	}
	@RequestMapping(value = { "/doLuukt" }, method = RequestMethod.GET)
	public String doLuukt() {
		return "kt/doLuukt";
	}
	@RequestMapping(value = { "/doXoakt" }, method = RequestMethod.GET)
	public String doXoakt() {
		return "kt/doXoakt";
	}
}
