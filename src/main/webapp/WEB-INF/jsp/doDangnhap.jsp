<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList,com.example.demo.dao.*,com.example.demo.model.*"%>
 
<%
    String username = (String)request.getParameter("username");
    String password = (String)request.getParameter("password");
    Thanhvien tv = new Thanhvien();
    tv.setUsername(username);
    tv.setPassword(password);
 
    ThanhvienDAO dao = new ThanhvienDAO();
    boolean kq = dao.kiemtraDangnhap(tv);
     
    if(kq){
        session.setAttribute("nvql", tv);
        response.sendRedirect("nv\\gdChinhnvql");
    }
    else{
        response.sendRedirect("gdDangnhap?err=fail");
    }
%>