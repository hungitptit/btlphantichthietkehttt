<%@ include file="header.jsp"%>
<%@ include file="navigation.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList,com.example.demo.dao.*,com.example.demo.model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Dang nhap</title>
<meta charset="UTF-8">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<header>
<nav>
</nav>
</header>
  
      <div class="container" >
      <%
      if(request.getParameter("err") !=null && request.getParameter("err").equalsIgnoreCase("timeout")){
          %> <h4>Hết phiên làm việc. Làm ơn đăng nhập lại!</h4><%
      }else if(request.getParameter("err") !=null && request.getParameter("err").equalsIgnoreCase("fail")){
          %> <h4 style="color: red;">Sai tên đăng nhập/mật khẩu!</h4><%
      }
      %>
		<h2> Đăng nhập </h2>
		    <form name="dangnhap" action="doDangnhap" method="post">
		        <table border="0">
		        	<tr><td><br></td></tr>
		            <tr>
		                <td>Tên đăng nhập: </td>
		                <td></td>
		                <td><input type="text" name="username" id="username" required /></td>
		            </tr>
		    		<tr><td><br></td></tr>
		            <tr>
		                <td>Mật khẩu:</td>
		                <td></td>
		                <td><input type="password" name="password" id="password"
		                    required /></td>
		            </tr>
		            <tr><td><br></td></tr>
		            <tr>
		                <td></td>
		                <td><input class= "btn-success btn-md" type="submit" value="Đăng nhập" /></td>
		            </tr>
		        </table>
		    </form>
    </div>
   
</body>
<div class="footer">
    
    <h2>
        
        Trần Xuân Hưng
    </h2>
</div>
</html>