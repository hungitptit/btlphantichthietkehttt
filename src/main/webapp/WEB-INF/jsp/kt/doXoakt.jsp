<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList,com.example.demo.dao.*,com.example.demo.model.*"%>
 
<%
    String id = (String)request.getParameter("id");
    //String password = (String)request.getParameter("password");
    KythuDAO ktdao = new KythuDAO();
    ktdao.xoaKythu(Integer.parseInt(id));
    response.sendRedirect("gdSuaXoakythu");
    
%>