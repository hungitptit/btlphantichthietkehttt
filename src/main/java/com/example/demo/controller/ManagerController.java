package com.example.demo.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ManagerController {
	@RequestMapping(value = { "nv/gdChinhnvql" }, method = RequestMethod.GET)
	public String showManageView(Map<String, Object> model) {
		return "nv/gdChinhnvql";
	}
	@RequestMapping(value = { "/gdqlttkt" }, method = RequestMethod.GET)
	public String showPlayerManagementView(Map<String, Object> model) {
		return "nv/gdQuanlythongtinkythu";
	}
	@RequestMapping(value = { "gdxemtk" }, method = RequestMethod.GET)
	public String showStatView(Map<String, Object> model) {
		return "nv/gdXemtk";
	}
	@RequestMapping(value = { "dsChitiet" }, method = RequestMethod.GET)
	public String showDetailView(Map<String, Object> model) {
		return "nv/dschitiet";
	}
}
