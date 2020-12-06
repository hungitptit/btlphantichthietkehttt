<%@page import="com.example.demo.model.Kythu"%>
<%@page import="com.example.demo.dao.KythuDAO"%>
<%@ include file="../header.jsp"%>
<%@ include file="../navigation.jsp"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<style>
btn{
   width: 60px;
  }
  .th_btn{
  width:60px;
  }
  #th_password{
  width:60%;
  }
</style>
<body>
<%
	String idThanhvien = request.getParameter("id");
	if (idThanhvien == null){
		idThanhvien = "0";
				}
	KythuDAO dao = new KythuDAO();
	Kythu kt = dao.getKythuById( Integer.parseInt(idThanhvien));
	session.setAttribute("updatekt", kt);
	
	//request.setAttribute(name, o)
%>
<div class="container">
	<div class="row">
		<div class="col-md-6 col-md-offset-3 ">
			<div class="panel panel-primary">
				<%
			      if(idThanhvien == "0"){
			          %> <div class="panel-heading"><h3>Thêm kỳ thủ</h3></div>
			          
			      <%
			      }else {
			          %> <div class="panel-heading"><h3>Sửa kỳ thủ</div><%
			      }
			      %>
				<div class="panel-body">
					  <form action="/doLuukt" >
					  
					    <div class="form-group">
					        <%
							if(idThanhvien=="0"){					     
					     %> <label for="username">Username:</label>
					     	<input type="text" class="form-control" id="username"  name="username" >
					     <%} %>
				
					      <input type="hidden" class="form-control" id="id" value="${updatekt.id}" name="id" >
					  
					    </div>
					    <div class="form-group">
					      
					         <%
							if(idThanhvien=="0"){					     
					     %> <label for="password">Password:</label>
					     	<input type="text" class="form-control" id="password"  name="password" >
					     <%} %>
					      <input type="hidden" class="form-control" id="idkythu" value="${updatekt.kythuId}" name="idkythu">
					     
					    </div>
					    <div class="form-group">
					      <label for="idKythu">Họ và tên:</label>
					       <%
							if(idThanhvien!="0"){					     
					     %>
					      <input type="text" class="form-control" id="hovaten" value="${updatekt.name}" name="hovaten" >
					      <% }else{
					    	  %><input type="text" class="form-control" id="hovaten" name="hovaten"><%	  
					      }
					     %>
					    </div>
					    <div class="form-group">
					      <label for="idKythu">Elo trước giải:</label>
					      <%
							if(idThanhvien!="0"){					     
					     %>
					      <input type="text" class="form-control" id="elo" value="${updatekt.elotruocgiai}" name="elo" >
					      <% }else{
					    	  %><input type="text" class="form-control" id="elo" name="elo" ><%	  
					      }
					     %>
					    </div>
					    <div class="form-group">
					      <label for="idKythu">Quốc tịch:</label>
					      <%
							if(idThanhvien!="0"){					     
					     %>
					      <input type="text" class="form-control" id="quoctich" value="${updatekt.quoctich}" name="quoctich">
					      <% }else{
					    	  %><input type="text" class="form-control" id="quoctich" name="quoctich" d><%	  
					      }
					     %>
					    </div>
					    <button type="submit" class="btn btn-success">Lưu</button>
					  </form>	
				</div>
			</div>
		</div>
	</div>
</div>
<%@ include file="../footer.jsp"%>
</body>
</html>