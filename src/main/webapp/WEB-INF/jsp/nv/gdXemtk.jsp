<%@page import="java.util.List"  import="java.util.ArrayList,com.example.demo.dao.*,com.example.demo.model.*"%>
<%@ include file="../header.jsp"%>
<%@ include file="../navigation.jsp"%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
  body {
  display: flex;
  flex-direction: column;
  min-height: 100vh;
  padding-bottom: 70px;
}

	
</style>
<body >
<div class="container" style="margin-bottom: 100px">
 <div>
  
 </div>
 <br>
 <div class="panel panel-primary">
  <div class="panel-heading">
   <h3>Thống kê Elo thay đổi</h3>
  </div>

  		<%  
  			TkEloDAO dao = new TkEloDAO();
  			List<TkElo> listtk= new ArrayList<TkElo>();
            listtk = dao.tkElo();
            request.setAttribute("listtk", listtk);
  		
  		
        %>
       
  
  <div class="panel-body">
   <table class="table table-bordered" id="table">
    <thead>
     <tr>
      <th width="10%">ID Kỳ thủ</th>
      <th width="30%">Họ và tên</th>
      <th width="20%">Elo trước giải</th>
      <th width="20%">Elo hiện tại</th>
      <th width="20%">Elo thay đổi</th>
      <th width="20%"></th>
     </tr>
    </thead>
    <tbody>
     <c:forEach items="${listtk}" var="tk">
      <tr>
      
       <td>${tk.kythuId}</td>
       <td>${tk.name}</td>
       <td>${tk.elotruocgiai}</td>
       <td>${tk.elohientai}</td>
       <td>${tk.elothaydoi}</td>
       <td>
       <a type="button" class="btn btn-primary"
        href="/dsChitiet?id=${tk.kythuId}">Chi tiết</a></td>
      </tr>
     </c:forEach>
    </tbody>
   </table>
  </div>
 </div>
 
 <div>
 
 </div>
</div>

<div>
<!-- %@ include file="footer.jsp"%>  -->

</div>

</body>
<div class="footer">
    
    <h2>
        
        Trần Xuân Hưng
    </h2>
</div>

</html>