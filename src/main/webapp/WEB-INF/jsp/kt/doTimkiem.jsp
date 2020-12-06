<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList,com.example.demo.dao.*,com.example.demo.model.*"%>
 
<%
    String name = (String)request.getParameter("name");
    //String password = (String)request.getParameter("password");
    List<Kythu> listKythu= new ArrayList<Kythu>();
   
 
    KythuDAO dao = new KythuDAO();
    listKythu = dao.searchPlayerByName(name);
     

    session.setAttribute("listKythu", listKythu);
    response.sendRedirect("gdSuaXoakythu?timkiem=true");
    
%>