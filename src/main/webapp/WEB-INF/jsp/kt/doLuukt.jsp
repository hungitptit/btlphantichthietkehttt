<%@page import="java.sql.CallableStatement"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList,com.example.demo.dao.*,com.example.demo.model.*"%>
 
<%
	KythuDAO dao = new KythuDAO();
	Kythu kt = new Kythu();
	ThanhvienDAO tvdao = new ThanhvienDAO();
	DAO d = new DAO();
	String id = request.getParameter("id");
	String idkythu = request.getParameter("idkythu");
	String name = request.getParameter("hovaten");
	String elo = request.getParameter("elo");
	String quoctich = request.getParameter("quoctich");
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	
	session.setAttribute("ma", id);

	kt.setId(Integer.parseInt(id));
	kt.setkythuId(Integer.parseInt(idkythu));
	kt.setName(name);
	kt.setElotruocgiai(Integer.parseInt(elo));
	kt.setQuoctich(quoctich);
	if(id==null||id.equalsIgnoreCase("0")){
		//response.sendRedirect("gdDangnhap");
		kt.setUsername(username);
		kt.setPassword(password);
		tvdao.themThanhvien(kt);
		id = tvdao.getIdbyUsername(username).toString();
		dao.themKythu(kt, Integer.parseInt(id));
		
	}
	
	else{
		dao.suaKythu(kt);
	}
	
	
    response.sendRedirect("gdSuaXoakythu");

%>